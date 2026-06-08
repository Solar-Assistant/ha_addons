ARG BUILD_FROM=ghcr.io/hassio-addons/base:20.1.1
FROM ${BUILD_FROM}

COPY run.sh /
RUN chmod a+x /run.sh

CMD ["/run.sh"]
