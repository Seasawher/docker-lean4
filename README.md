# Lean4 Docker Image

Docker image of lean4 theorem prover. Currently, only the `lean4:nightly` version is supported.

## Getting Started

### Pull

Run the command to pull this image.

```bash
docker pull ghcr.io/seasawher/lean4:main
```

### Docker Compose

Create a `docker-compose.yml` file like the following:

```yml
version: "3.9"

services:
  lean4:
    image: ghcr.io/seasawher/lean4:main
    stdin_open: true
    tty: true
```

And run as following:

```bash
docker compose up -d
```

### Dev Container

Create a `.devcontainer` directory in the root of your workspace and
create a `devcontainer.json` file with the following content.

```jsonc
{
    "name": "${containerWorkspaceFolder}",
    "image": "ghcr.io/seasawher/lean4:main",
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
