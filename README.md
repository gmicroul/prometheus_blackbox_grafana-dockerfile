# prometheus_blackbox_grafana-dockerfile
#1,purpose:
         to maintain prometheus_blackbox_grafana dockerfile
         
#2,grafana dashboard template: 13659
                            default user/password admin/admin

#3,podman pull microul/prometheus_blackbox_grafana_amd64:v1

#4,podman run -itd -p 9090:9090 -p 9115:9115 -p 3000:3000 microul/prometheus_blackbox_grafana_amd64:v1
