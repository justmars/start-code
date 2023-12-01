
# prepare to commit
prep:
  pre-commit run --all-files
  pytest

# serve docs
docs:
  mkdocs serve

# create .env file from example
dumpenv:
  op inject -i env.example -o .env

# update /src requirements.txt
req:
  poetry export -f requirements.txt --without-hashes --output src/requirements.txt
