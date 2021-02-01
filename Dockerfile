FROM alpine:3.9

ADD configure.sh /configure.sh

RUN apk add --no-cache ca-certificates openssh curl unzip \
 && chmod +x /configure.sh

USER whatever
WORKDIR /home
CMD mkdir -p ~/.bin && /configure.sh
