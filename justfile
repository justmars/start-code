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

# git push
push msg:
  rm -f compose.yml
  git add .
  git commit -m 'feat: {{msg}}'
  git push
