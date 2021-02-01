FROM alpine:3.5

ADD configure.sh /configure.sh
ADD init.sh /init.sh

RUN apk add --no-cache ca-certificates curl unzip \
 && chmod +x /configure.sh

CMD /configure.sh

USER whatever
WORKDIR /home
CMD mkdir -p ~/.bin && bash /init.sh
