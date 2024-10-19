FROM alpine:latest
ENV BLACKBOX_EXPORTER_VERSION=0.24.0
CMD ["/bin/sh"]
RUN apk update \
 && apk add --no-cache bash curl unzip musl-dev \
 && mkdir /prometheus \
 && mkdir /blackbox_exporter \
 && mkdir /grafana \
 && cd /prometheus \
 && curl -LO https://github.com/prometheus/prometheus/releases/download/v2.48.0-rc.2/prometheus-2.48.0-rc.2.linux-amd64.tar.gz \
 && tar -xf prometheus-2.48.0-rc.2.linux-amd64.tar.gz --strip-components=1 \
 && rm prometheus-2.48.0-rc.2.linux-amd64.tar.gz \
 && cd /grafana \
 && curl -LO https://dl.grafana.com/enterprise/release/grafana-enterprise-10.2.0.linux-amd64.tar.gz \
 && tar -xf grafana-enterprise-10.2.0.linux-amd64.tar.gz --strip-components=1 \
 && rm grafana-enterprise-10.2.0.linux-amd64.tar.gz \ 
 && cd /blackbox_exporter \
 && curl -LO https://github.com/prometheus/blackbox_exporter/releases/download/v0.24.0/blackbox_exporter-0.24.0.linux-amd64.tar.gz \
 && tar -xf blackbox_exporter-$BLACKBOX_EXPORTER_VERSION.linux-amd64.tar.gz --strip-components=1 \
 && rm blackbox_exporter-$BLACKBOX_EXPORTER_VERSION.linux-amd64.tar.gz
COPY prometheus.yml /prometheus/
COPY blackbox-url.yml /prometheus/
COPY custom.ini /grafana/conf/custom.ini
COPY blackbox.yml /blackbox_exporter/
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 9090 9115 3000

