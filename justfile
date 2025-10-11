set dotenv-load

# create .env file from example
dumpenv:
  op inject -i env.example -o .env

# upload to pypi
publish:
  python -m build && \
  python -m twine upload dist/* -u __token__ -p $PYPI_TOKEN
