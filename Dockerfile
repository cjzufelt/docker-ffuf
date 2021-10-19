FROM alpine:latest
LABEL Author="Connor Zufelt"
RUN apk add --no-cache wget
RUN apk add --no-cache tar
RUN wget https://github.com/ffuf/ffuf/releases/download/v1.3.1/ffuf_1.3.1_linux_arm64.tar.gz -O ffuf.tar.gz -q
RUN tar -xvzf ffuf.tar.gz -o ffuf
RUN rm ffuf.tar.gz
ENTRYPOINT ["./ffuf"]