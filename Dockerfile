FROM alpine
RUN mkdir /app
WORKDIR /app

RUN apk add curl
RUN curl -L -o speedtest.tgz https://install.speedtest.net/app/cli/ookla-speedtest-1.0.0-arm-linux.tgz
RUN tar -xzf speedtest.tgz && rm speedtest.tgz

ENTRYPOINT ["/app/speedtest", "--accept-license", "--accept-gdpr"]
