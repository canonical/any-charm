#!/usr/bin/env python3
# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

"""any-charm entrypoint."""

import ast
import os
import pathlib
import shutil
import subprocess
import sys

import yaml
from charmhelpers.core import hookenv
from ops.main import main
from packaging.requirements import Requirement
from packaging.version import Version

SRC_DIR = pathlib.Path(os.path.abspath(os.path.split(__file__)[0]))
CHARM_DIR = SRC_DIR.parent
THIS_FILE = pathlib.Path(__file__)
WHEELHOUSE_PACKAGES = [
    (line.split("==")[0], Version(line.split("==")[1]))
    for line in (CHARM_DIR / "wheelhouse.txt").read_text().splitlines()
]
WHEELHOUSE_DIR = CHARM_DIR / "wheelhouse"
DYNAMIC_PACKAGES_PATH = CHARM_DIR / "dynamic-packages"

original = {}
installed_python_packages = ""


def self_modify_assign_value(symbol: str, value_repr: str):
    source = THIS_FILE.read_text(encoding="utf-8")
    root = ast.parse(source)
    source_lines = source.splitlines(keepends=True)
    for stmt in ast.iter_child_nodes(root):
        if not (
            isinstance(stmt, ast.Assign)
            and len(stmt.targets) == 1
            and isinstance(stmt.targets[0], ast.Name)
            and stmt.targets[0].id == symbol
        ):
            continue
        value = stmt.value
        start_offset = (
            sum(len(line) for line in source_lines[: value.lineno - 1]) + value.col_offset
        )
        end_offset = (
            sum(len(line) for line in source_lines[: value.end_lineno - 1]) + value.end_col_offset
        )
        new_source = source[:start_offset]
        new_source += value_repr
        new_source += source[end_offset:]
        THIS_FILE.write_text(new_source, encoding="utf-8")
        break
    else:
        raise RuntimeError(f"failed to modifying {symbol} value in source code")


def pip_install(requirements: str):
    install_wheelhouse = []
    install_pypi = []
    for line in requirements.splitlines():
        if not line.strip():
            continue
        req = Requirement(line)
        if req.url is not None:
            install_pypi.append(line)
            continue
        if req.extras:
            install_pypi.append(line)
            continue
        for name, version in WHEELHOUSE_PACKAGES:
            if name == req.name and version in req.specifier:
                install_wheelhouse.append(line)
                break
        else:
            install_pypi.append(line)
    if install_wheelhouse:
        hookenv.log(f"installing python packages {install_wheelhouse} from wheelhouse")
        subprocess.check_call(
            [
                sys.executable,
                "-m",
                "pip",
                "install",
                "--root-user-action=ignore",
                f"--target={DYNAMIC_PACKAGES_PATH}",
                "--no-index",
                f"--find-links={WHEELHOUSE_DIR}",
                *install_wheelhouse,
            ]
        )
    if install_pypi:
        hookenv.log(f"installing python packages {install_pypi} from pypi")
        subprocess.check_call(
            [
                sys.executable,
                "-m",
                "pip",
                "install",
                "--root-user-action=ignore",
                f"--target={DYNAMIC_PACKAGES_PATH}",
                *install_pypi,
            ]
        )


def preserve_original():
    global original
    if not original:
        original = {
            str(f.relative_to(SRC_DIR)): f.read_text(encoding="utf-8")
            for f in SRC_DIR.iterdir()
            if f.name.endswith(".py") and not f.samefile(THIS_FILE)
        }
        self_modify_assign_value(f"{original=}".split("=")[0], repr(original))


def install_packages():
    python_packages = hookenv.config("python-packages")
    if python_packages != installed_python_packages:
        shutil.rmtree(DYNAMIC_PACKAGES_PATH, ignore_errors=True)
        os.mkdir(DYNAMIC_PACKAGES_PATH)
        pip_install(python_packages)
        self_modify_assign_value(
            f"{installed_python_packages=}".split("=")[0], repr(python_packages)
        )


def src_overwrite():
    for src_overwrite_filename, src_overwrite_file_content in {
        **original,
        **yaml.safe_load(hookenv.config("src-overwrite")),
    }.items():
        overwrite_path = SRC_DIR / src_overwrite_filename
        if overwrite_path.exists() and THIS_FILE.samefile(overwrite_path):
            continue
        overwrite_path.parent.mkdir(exist_ok=True)
        overwrite_path.write_text(src_overwrite_file_content)


if __name__ == "__main__":
    preserve_original()
    install_packages()
    src_overwrite()
    sys.path.append(str(SRC_DIR))
    sys.path.append(str(DYNAMIC_PACKAGES_PATH))
    from any_charm import AnyCharm

    main(AnyCharm)
