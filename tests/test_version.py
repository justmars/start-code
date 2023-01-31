import pathlib
import tomllib

import start_code


def test_version():
    path = pathlib.Path("pyproject.toml")
    data = tomllib.loads(path.read_text())
    version = data["tool"]["poetry"]["version"]
    assert version == start_code.__version__
