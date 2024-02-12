# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

import importlib.util
import pathlib
import secrets
import shutil
import sys
import tempfile


def import_module(path: pathlib.Path):
    name = f"dynamic_{secrets.token_hex(8)}"
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module


def test_preserve_original():
    charm_dir = pathlib.Path(__file__).parent.parent.parent
    src_dir = charm_dir / "src"
    with tempfile.TemporaryDirectory() as tmp:
        tmp_dir = pathlib.Path(tmp)
        tmp_src = tmp_dir / "src"
        tmp_src.mkdir(exist_ok=True)
        tmp_src_charm = tmp_src / "charm.py"
        shutil.copy(charm_dir / "wheelhouse.txt", tmp_dir)

        original = {}
        for file in src_dir.glob("*.py"):
            shutil.copy(file, tmp_src)
            if file.name != "charm.py":
                original[file.name] = file.read_text()

        charm = import_module(tmp_src_charm)
        charm.preserve_original()
        charm = import_module(tmp_src_charm)
        assert charm.original == original

        charm.preserve_original()
        charm = import_module(tmp_src_charm)
        assert charm.original == original
