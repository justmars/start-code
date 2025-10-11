---
hide:
- navigation
- toc
---
# Boilerplate

```{ .sh .copy title="Rename t" }
gh repo clone justmars/start-code t \
  && cd t \
  && just start # 3.14 (1)
```

1. Check version

    !!! warning

        At present, it's `3.14` as specified under `pyproject.toml`

## app

1. Choose to either delete or rename the root `/src/start_code` folder to _desired target name_. If it's deleted, edit `/tests/test_version` by replacing `src`
2. The sole `__init__.py` file in the `/src` folder will have a single variable `__version__` equal to "0.0.1"
3. The version should match the version found in `pyproject.toml`

## pyproject.toml

```toml
[project]
name = "src" # _t_ (1)
description = "Boilerplate Python Code"
version = "0.0.1" # see tests/test_version

dependencies = [ # (2)
  "environs >= 14.1",
]
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
pre-commit install
git commit -m "setup"
git remote add origin <repo_url>
git push -u origin main
```
