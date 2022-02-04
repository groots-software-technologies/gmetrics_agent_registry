# gmetrics_agent_registry

###  Clone repo on remote system and copy registry to following path

```
mkdir -p /root/gmetricsdata && cd /root/gmetricsdata

git clone https://github.com/grootsadmin/gmetrics_agent_registry.git && cd gmetrics_agent_registry

cp gmetrics-bin /groots/metrics/libexec/gmetrics-bin && chmod +x /groots/metrics/libexec/gmetrics-bin

cp gmetrics-registry-conf.sh /groots/metrics/gmetrics-registry-conf.sh && chmod +x /groots/metrics/gmetrics-registry-conf.sh

# Restart gmetrics agent service

systemctl restart gmetrics-agent
systemctl enable gmetrics-agent
systemctl status gmetrics-agent
```
