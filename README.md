# Leantime with PostgreSQL support

This repository contains a minimal container image based on the official
[`leantime/leantime`](https://hub.docker.com/r/leantime/leantime) image. The only
addition is the PHP PostgreSQL driver (`pdo_pgsql`) and its required runtime
library.

It does not contain or modify the Leantime application itself. Leantime releases
and application documentation remain available from the
[official Leantime project](https://github.com/Leantime/leantime).

## Image

Images are built from the `Dockerfile` and published to GitHub Container Registry:

```text
ghcr.io/<owner>/<repository>:<tag>
```

For example, pull a published image with:

```bash
docker pull ghcr.io/<owner>/<repository>:<tag>
```

The available tags are derived from this repository's branches and Git tags.

## Build locally

```bash
docker build -t leantime-pgsql .
```

The upstream Leantime image version is pinned in the `Dockerfile`. Dependabot
checks for updates to that base image every day.
