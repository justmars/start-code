# Boilerplate

`git clone justmars/start_code` _target_

## python-version

Check `.python-version`, default is 3.11.1

!!! warning

    Run `poetry env use $(pyenv which python)` if `.python-version` has been updated. Review created .venv folder's `pyvenv.cfg` this should show the version declared in `.python-version`

## app

1. Rename the root `/src` folder to _target_ or delete
2. The _target_ will be included in `poetry build`
3. The sole `__init__.py` file in the root folder will have a single variable `__version__` equal to "0.0.1"
4. The version should match the version found in `pyproject.toml`

## pyproject.toml

```toml
[tool.poetry]
name = "src" # _target_
description = "Boilerplate Python Code"
version = "0.0.1" # see tests/test_version
```

!!! warning

    If publishing to pypi, ensure `name` doesn't exist yet.

!!! note

    Remove dependencies that aren't applicable.

## mkdocs.yml

```yaml
site_name: start_code Docs # match with pyproject.toml
site_description: start_code description # match with pyproject.toml
repo_url: https://github.com/justmars # change justmars to _target_
...
nav:
  - Overview: index.md # adjust
  - Gotchas: gotchas.md # remove
```

## pregit

1. Revise`README.md`; do replace all `start-code` with _target_
2. Ensure parity of `pyproject.toml` with `mkdocs.yml`
3. Add applicable classifiers
4. Add `.vscode` to `.gitignore`
5. [Create github repository](https://github.com/new)
6. Add github `repo_url` to `mkdocs.yml`
7. Edit `/docs/index.md`, remove`/docs/gotchas.md`
8. Edit `/tests/test_version` by replacing `src`
9. Run `poetry shell`
10. Run `poetry update`
11. Run `pytest`
12. Review with `mkdocs serve`

## github

```sh
rm -rf .git # remove cloned .git file
git init -b main
git add .
pre-commit autoupdate
pre-commit run --all-files
git commit -m "setup"
git remote add origin <repo_url>
git push -u origin main
```
