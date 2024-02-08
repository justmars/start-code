import pathlib
import tomllib

import src.start_code as start_code


def test_version():
    path = pathlib.Path("pyproject.toml")
    data = tomllib.loads(path.read_text())
    version = data["project"]["version"]
    assert version == start_code.__version__
