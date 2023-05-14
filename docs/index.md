---
hide:
- navigation
- toc
---
# Boilerplate

```{ .sh .copy title="Rename t" }
gh repo clone justmars/start-code t \
  && cd t \
  && just start # 3.11.3 (1)
```

1. Check `.python-version`

    !!! warning

        Review created .venv folder's `pyvenv.cfg` this should show the version declared in `.python-version`

## app

1. Rename the root `/src` folder to _target_ or delete
2. The _target_ will be included in `poetry build`
3. The sole `__init__.py` file in the root folder will have a single variable `__version__` equal to "0.0.1"
4. The version should match the version found in `pyproject.toml`
5. Edit `/tests/test_version` by replacing `src`

## pyproject.toml

```toml
[tool.poetry]
name = "src" # _t_ (1)
description = "Boilerplate Python Code"
version = "0.0.1" # see tests/test_version

[tool.poetry.dependencies]
python = "^3.11"
python-dotenv = "^0.21"

[tool.poetry.group.dev.dependencies] # (2)
...
```

1. If publishing to pypi, ensure `name` doesn't exist yet.
2. Remove dependencies that aren't applicable.

## mkdocs.yml

```yaml
site_name: start_code Docs # match with pyproject.toml
site_description: start_code description # match with pyproject.toml
repo_url: https://github.com/justmars # change justmars to _target_
...
nav:
  - Overview: index.md # adjust
```

## pregit

1. Revise`README.md`; do replace all `start-code` with _target_
2. Ensure parity of `pyproject.toml` with `mkdocs.yml`
3. Edit `/docs/index.md`, remove`/docs/gotchas.md`
4. Review docs `mkdocs serve`

## github

!!! warning "Remember"

    [Create Github Repository](https://github.com/new){ .md-button }

    The created github repository URL `<repo_url>` must match:

    field | file
    --:|:--
    `repo_url` | `mkdocs.yml`
    `repository` | `pyproject.toml`

    Review the files above.

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
