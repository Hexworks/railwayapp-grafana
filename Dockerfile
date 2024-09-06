ARG VERSION=latest

FROM grafana/grafana-oss:${VERSION}

COPY datasources.yml /etc/tempo/datasources.yml

ENV \
    GF_INSTALL_PLUGINS=grafana-piechart-panel,grafana-worldmap-panel,grafana-clock-panel,grafana-simple-json-datasource
