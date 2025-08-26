# Jupyter Book with numbered equations

How to handle equation numbering for a static website built with jupyter-book.

The result is [here](https://benjamingosselincliche.github.io/jupyterbook-with-numbered-equations).

## Build

### Pull and contruct images

From dockerhub:
```bash
docker pull python:3.12.11-slim
```
For jupyter-book:

```bash
docker build -t jupyterbook-templates:1.0.0 .
```

### Run the container

```bash
bash run_jupyterbook.sh
```
or

```bash
docker run --rm \
  --name jupyterbook-templates \
  --volume "$(pwd):/app" \
  --workdir /app \
  jupyterbook-templates:1.0.0 \
  jupyter-book build website/
```

The index.html file is builded in the _build/html folder.


