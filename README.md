# Lean4 Docker Image

Docker image of lean4 theorem prover.

## Getting Started

### Pull

Run the command to pull this image.

```bash
docker pull ghcr.io/seasawher/lean:nightly
```

### Docker Compose

Create a `docker-compose.yml` file like the following:

```yml
version: "3.9"

services:
  lean4:
    image: seasawher/lean:nightly
    stdin_open: true
    tty: true
```

And run as following:

```bash
docker compose up -d
```
