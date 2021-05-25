FROM alpine:3.9

ARG LMP_VERSION=0.27.0
ARG LMP_FILENAME=LunaMultiplayer-Debug.zip

ARG LMP_URL=https://github.com/LunaMultiplayer/LunaMultiplayer/releases/download/$LMP_VERSION/$LMP_FILENAME

RUN apk add --no-cache mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    wget $LMP_URL && \
    unzip $LMP_FILENAME && \
    rm -rf $LMP_FILENAME LMPClient LMP\ Readme.txt

WORKDIR LMPServer

EXPOSE 8800/udp
EXPOSE 8900/tcp

VOLUME ["Universe", "Config", "Plugins"]

CMD ["mono", "Server.exe"]
