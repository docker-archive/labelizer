FROM gliderlabs/alpine
MAINTAINER support@tutum.co

ADD entrypoint.sh /
RUN apk --update add nodejs && \
 	npm install -g yaml2json && \
	chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

LABEL co.tutum.yml=""

LABEL co.tutum.yml=""
