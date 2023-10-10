#!/usr/bin/env python3
# Copyright 2022 Canonical Ltd.
# See LICENSE file for licensing details.

"""any-charm entrypoint."""

import ast
import logging
import os
import pathlib
import sys

import yaml
from charmhelpers.core import hookenv
from ops.main import main

SRC_PATH = pathlib.Path(os.path.abspath(os.path.split(__file__)[0]))
THIS_FILE = pathlib.Path(__file__)

logger = logging.getLogger(__name__)

original = {}

if not original:
    source = THIS_FILE.read_text(encoding="utf-8")
    root = ast.parse(source)
    source_lines = source.splitlines(keepends=True)
    for stmt in ast.iter_child_nodes(root):
        if not (
            isinstance(stmt, ast.Assign)
            and len(stmt.targets) == 1
            and isinstance(stmt.targets[0], ast.Name)
            and stmt.targets[0].id == "original"
        ):
            continue
        value = stmt.value
        original = {
            str(f.relative_to(SRC_PATH)): f.read_text(encoding="utf-8")
            for f in SRC_PATH.iterdir()
            if not f.samefile(THIS_FILE)
        }
        start_offset = (
            sum(len(line) for line in source_lines[: value.lineno - 1]) + value.col_offset
        )
        end_offset = (
            sum(len(line) for line in source_lines[: value.end_lineno - 1]) + value.end_col_offset
        )
        new_source = source[:start_offset]
        new_source += "{\n"
        for k, v in original.items():
            new_source += f"    {repr(k)}: {repr(v)},\n"
        new_source += "}"
        new_source += source[end_offset:]
        THIS_FILE.write_text(new_source, encoding="utf-8")
        break
    else:
        raise RuntimeError("failed to collect original src files")

for src_overwrite_filename, src_overwrite_file_content in {
    **original,
    **yaml.safe_load(hookenv.config("src-overwrite")),
}.items():
    overwrite_path = SRC_PATH / src_overwrite_filename
    if overwrite_path.exists() and THIS_FILE.samefile(overwrite_path):
        continue
    overwrite_path.parent.mkdir(exist_ok=True)
    overwrite_path.write_text(src_overwrite_file_content)

sys.path.append(str(SRC_PATH))

from any_charm import AnyCharm  # noqa: E402 module level import not at top of file

if __name__ == "__main__":
    main(AnyCharm)
