set dotenv-load

# create .venv
start:
  uv sync --all-extras && \
  source .venv/bin/activate

# create .env file from example
dumpenv:
  op inject -i env.example -o .env

# upload to pypi
publish:
  python -m build && \
  python -m twine upload dist/* -u __token__ -p $PYPI_TOKEN
