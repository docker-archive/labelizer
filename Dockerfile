FROM gliderlabs/alpine
MAINTAINER support@tutum.co

ADD run.sh /
RUN apk --update add nodejs && \
 	npm install -g yaml2json && \
	chmod +x /run.sh

CMD /run.sh
