# Lean4 Docker Image

Docker image of lean4 theorem prover. Currently, only the `lean4:nightly` version is supported.

## Getting Started

### Pull

Run the command to pull this image.

```bash
docker pull ghcr.io/seasawher/lean:main
```

### Docker Compose

Create a `docker-compose.yml` file like the following:

```yml
version: "3.9"

services:
  lean4:
    image: ghcr.io/seasawher/lean:main
    stdin_open: true
    tty: true
```

And run as following:

```bash
docker compose up -d
```
