FROM alpine:3.5

ENTRYPOINT ["/oklog"]

EXPOSE 7659 7651 7653 7650

RUN mkdir /data

ADD https://github.com/oklog/oklog/releases/download/v0.1.2/oklog-0.1.2-linux-amd64 /oklog
RUN ["chmod", "775", "/oklog"]

LABEL vendor=https://github.com/oklog/oklog \
	oklog.version=0.1.2 \
	oklog.release-date=2017-01-20