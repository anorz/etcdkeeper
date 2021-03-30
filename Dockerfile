FROM alpine

MAINTAINER etcdkeeper

RUN  apk add --no-cache tzdata
RUN  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ADD assets assets
ADD etcdkeeper /etcdkeeper

ENTRYPOINT ["/etcdkeeper"]