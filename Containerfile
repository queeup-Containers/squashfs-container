ARG ALPINE_VERSION=edge

FROM alpine:$ALPINE_VERSION as build
ARG SQUASHFSTOOLS_VERSION=4.6.1-r1
RUN apk add --no-cache squashfs-tools=$SQUASHFSTOOLS_VERSION

FROM scratch
COPY --from=build /usr/bin/*squashfs /bin/
COPY --from=build /usr/lib/liblz*.so.[0-9] \
                  /usr/lib/libzstd.so.[0-9] \
                  /lib/ld-musl-*.so.[0-9] \
                  /lib/libz.so.[0-9] \
                  /lib/
