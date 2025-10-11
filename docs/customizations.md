# Customizations

## clear notebooks

```yml
  - repo: https://github.com/kynan/nbstripout
    rev: 0.8.1
    hooks:
      - id: nbstripout
```

## django precommit

```yml
  - repo: https://github.com/rtts/djhtml
    rev: 3.0.10
    hooks:
      - id: djhtml
        args: ["--tabwidth", "2"]
      - id: djcss
        exclude: .*/output.*.css
```

## tailwindcss justfile

```s
# build step tailwindcss
tw:
  npx tailwindcss -i ./src/static/css/input.css \
    -o ./src/static/css/output.css --watch

# install tailwindcss and plugins
tw_install:
  npm install -D tailwindcss \
    @tailwindcss/typography \
    @tailwindcss/forms
```
