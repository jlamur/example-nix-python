# Getting started
## Build and run the app
```bash
nix-build
./result/bin/myapp
```

## Spawn a shell inside the env
```bash
nix-shell
```

## Build the docker image and run it
```bash
nix-build docker.nix
docker load -i ./result
docker run --rm example-nix-python:latest
```
