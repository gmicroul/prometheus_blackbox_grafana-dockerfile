# prometheus_blackbox_grafana-dockerfile
to maintain prometheus_blackbox_grafana dockerfile
grafana dashboard template: 13659, default user/password admin/admin
podman pull microul/prometheus_blackbox_grafana_amd64:v1
podman run -itd -p 9090:9090 -p 9115:9115 -p 3000:3000 microul/prometheus_blackbox_grafana_amd64:v1
