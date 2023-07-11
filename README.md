# [squashfs-tools](https://github.com/plougher/squashfs-tools) in a container

## Tags

- `latest`: latest squashfs-tools binary files on top of [scratch](https://hub.docker.com/_/scratch) image
  - `v4.6.1-r1`: you can choose specific version of squashfs-tools

## Commands

- mksquasfs
- unsquashfs

## Pull

```bash
podman pull docker.io/queeup/squashfs-container

# OR

podman pull ghcr.io/queeup/squashfs-container
```

## Use

```bash
podman run \
    --rm \
    --volume `pwd`:/build \
    --workdir /build \
    --interactive \
    --tty \
    squashfs-container \
    mksquashfs system.new SYSTEM.new -noappend -comp zstd -Xcompression-level 19 -b 1048576
```

## Build

```bash
podman build --tag squashfs-container --file Containerfile
```

### [Containerfile is here](https://github.com/queeup/squashfs-container/blob/main/Containerfile)
