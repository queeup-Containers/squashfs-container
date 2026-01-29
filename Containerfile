ARG ALPINE_CHANNEL
FROM alpine:${ALPINE_CHANNEL} AS build

ARG APP_VERSION
RUN apk add --no-cache squashfs-tools=${APP_VERSION}

FROM scratch
COPY --from=build /usr/bin/*squashfs /bin/
COPY --from=build /usr/lib/liblz*.so.[0-9] \
    /usr/lib/libzstd.so.[0-9] \
    /lib/ld-musl-*.so.[0-9] \
    /lib/libz.so.[0-9] \
    /lib/
