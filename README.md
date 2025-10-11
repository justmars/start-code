# start-code

![Github CI](https://github.com/justmars/start-code/actions/workflows/ci.yml/badge.svg)

Minimal boilerplate:

1. [/src layout](https://packaging.python.org/en/latest/discussions/src-layout-vs-flat-layout/) adopted.
2. `mkdocs serve` shows basic documentation.
3. Contains `.github/workflows/ci.yml`.
4. `uv`-based workflow.
5. Secrets via 1password cli, see env.example in relation to `just dumpenv`.
6. Possible to publish to pypi with `just publish`.
7. `.vscode/settings.json` contains basic config.

## Development

See [documentation](https://justmars.github.io/start-code).

## Pre-commit

1. `pre-commit` basics: large files, end of file fixes, trailing white spaces, etc.
2. `ruff` for linting and formatting
3. `nbstripout` for cleaning Jupyter notebooks
