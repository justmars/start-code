# my boilerplate docs

Some boilerplate.

## Quickstart

### Copy from source

1. `gh repo clone justmars/start_code` _target_
2. Rename `start_code` folder to _target_ or delete
3. The _target_ will be included in `poetry build`
4. Add `.vscode` to `.gitignore`

### Set python version

1. Check `.python-version`, default is 3.11.1
2. Run `poetry env use $(pyenv which python)` if `.python-version` has been updated.
3. Review created .venv folder's `pyvenv.cfg` this should show the version declared in `.python-version`

## Configure package / docs

1. Open `pyproject.toml`
2. Change `name` from `start_code` to `desired-package-name` (not a duplicate in pypi)
3. Add description
4. Remove dependencies that aren't applicable
5. Ensure parity with docs at `docs/index.md`
6. Revise README.md
7. Create a repository in github and secure the repository's url.
8. Use this url in `pyproject.toml`.

## Setup git repo

```sh
rm -rf .git # remove cloned .git file
git init -b main
git add .
pre-commit autoupdate
pre-commit run --all-files
git commit -m "first"
git remote add origin <url> # get from github
git push -u origin main
```

## Cleanup

1. Delete contents of this README from `Gotchas` going down.
2. Update precommit [config](./pre-commit-config.yaml) version numbers to match [pyproject.toml](./pyproject.toml), in case these have been updated.
