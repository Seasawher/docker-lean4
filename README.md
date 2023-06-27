# Docker Lean4

Docker image of lean4 theorem prover.

## Getting Started

### Pull

Run the command to pull this image.

```bash
docker pull ghcr.io/seasawher/docker-lean4:main
```

### Docker Compose

Create a `docker-compose.yml` file like the following:

```yml
version: "3.9"

services:
  lean4:
    image: seasawher/docker-lean4:main
    stdin_open: true
    tty: true
```

And run as following:

```bash
docker compose up -d
```

### Dev Container

Create a `.devcontainer` directory in the root of your workspace and
create a `devcontainer.json` file with the floowing contant.

```json
{
    "name": "${containerWorkspaceFolder}",
    "image": "ghcr.io/seasawher/lean:main",
    "features": {
        "ghcr.io/devcontainers/features/git:1": {}
    },
    "customizations": {
        // Configure properties specific to VS Code.
        "vscode": {
            "settings": {},
            // Add the IDs of extensions you want installed when the container is created.
            "extensions": []
        }
    }
}
```
