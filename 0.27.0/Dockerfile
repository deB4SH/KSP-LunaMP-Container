FROM alpine:3.13.5

RUN apk add --no-cache mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing
RUN apk add unzip wget

RUN wget https://github.com/LunaMultiplayer/LunaMultiplayer/releases/download/0.27.0/LunaMultiplayer-Debug.zip
RUN ls -al ./
RUN unzip /LunaMultiplayer-Debug.zip

WORKDIR LMPServer

RUN ls -al ./

EXPOSE 8800/udp
EXPOSE 8900/tcp

VOLUME ["Universe", "Config", "Plugins"]

CMD ["mono", "Server.exe"]
