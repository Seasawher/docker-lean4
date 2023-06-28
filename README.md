# Lean4 Docker Image

Docker image of lean4 theorem prover.

## Getting Started

| Image Tag                       | base   | Image size | Platform        |
| ------------------------------- | ------ | ---------- | --------------- |
| ghcr.io/seasawher/lean4:nightly | ubuntu | 1.0 GB     | GitHub Packages |
| ghcr.io/seasawher/lean4:stable  | ubuntu | 0.8 GB     | GitHub Packages |

### Pull

Run the command to pull this image.

```bash
docker pull ghcr.io/seasawher/lean4:nightly
```

### Docker Compose

Create a `docker-compose.yml` file like the following:

```yml
version: "3.9"

services:
  lean4:
    image: ghcr.io/seasawher/lean4:nightly
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
    "image": "ghcr.io/seasawher/lean4:nightly",
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
