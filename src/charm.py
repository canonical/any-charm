#!/usr/bin/env python3
# Copyright 2022 Canonical Ltd.
# See LICENSE file for licensing details.

"""any-charm entrypoint."""

import logging
import os
import pathlib
import sys

import yaml
from charmhelpers.core import hookenv
from ops.main import main

SRC_PATH = pathlib.Path(os.path.abspath(os.path.split(__file__)[0]))

logger = logging.getLogger(__name__)

for src_overwrite_filename, src_overwrite_file_content in yaml.safe_load(
    hookenv.config("src-overwrite")
).items():
    if src_overwrite_filename == "charm.py":
        continue
    overwrite_path = SRC_PATH / src_overwrite_filename
    overwrite_path.parent.mkdir(exist_ok=True)
    overwrite_path.write_text(src_overwrite_file_content)

sys.path.append(str(SRC_PATH))

from any_charm import AnyCharm  # noqa: E402 module level import not at top of file

if __name__ == "__main__":
    main(AnyCharm)
