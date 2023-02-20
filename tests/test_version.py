import pathlib
import tomllib

import mv3


def test_version():
    path = pathlib.Path("pyproject.toml")
    data = tomllib.loads(path.read_text())
    version = data["tool"]["poetry"]["version"]
    assert version == mv3.__version__
