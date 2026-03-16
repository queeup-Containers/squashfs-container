# [squashfs-tools](https://github.com/plougher/squashfs-tools) in a container

## Tags

- `latest`: latest squashfs-tools binary files on top of [scratch](https://hub.docker.com/_/scratch) image
  - `v4.6.1-r1`: you can choose specific version of squashfs-tools

## Commands

- mksquasfs
- unsquashfs

## Pull

- `docker.io/queeup/squashfs-container`
- `ghcr.io/queeup-containers/squashfs-container`

## Use

```bash
podman run \
    --rm \
    --volume "$PWD":/build \
    --workdir /build \
    --interactive \
    --tty \
    ghcr.io/queeup-containers/squashfs-container \
    mksquashfs system.new SYSTEM.new -noappend -comp zstd -Xcompression-level 19 -b 1048576
```

## Build

```bash
podman build --tag squashfs-container --file Containerfile .
```

### [Containerfile is here](https://github.com/queeup-containers/squashfs-container/blob/main/Containerfile)
