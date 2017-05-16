FROM nginx:1.11.8-alpine
MAINTAINER steve@vidsy.co

ENV SERVER_NAME localhost
ENV REDIRECT_URI http://example.com
ENV REDIRECT_STATUS_CODE 301

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY run.sh /run.sh
RUN chmod u+x /run.sh

ENTRYPOINT ["/run.sh"]
