#!/bin/bash

# Start Prometheus
cd /prometheus
./prometheus --config.file=prometheus.yml &
sleep 3

# Start Blackbox Exporter
cd /blackbox_exporter
./blackbox_exporter --config.file=blackbox.yml &
sleep 3

# Start Grafana
cd /grafana
./bin/grafana-server &
sleep infinity
