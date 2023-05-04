# build step tailwindcss
tw:
  npx tailwindcss -i ./src/static/css/input.css \
    -o ./src/static/css/output.css --watch

# install tailwindcss and plugins
tw_install:
  npm install -D tailwindcss \
    @tailwindcss/typography \
    @tailwindcss/forms \
    @tailwindcss/aspect-ratio \
    @tailwindcss/container-queries

# prepare to commit
pre:
  pre-commit run --all-files
  cd src && pytest

# serve docs
docs:
  mkdocs serve

# create .env file from example
dumpenv:
  op inject -i env.example -o .env

# update /src requirements.txt
req:
  poetry export -f requirements.txt --without-hashes --output src/requirements.txt
