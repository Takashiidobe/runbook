# Plausible

Link: <https://plausible.takashiidobe.com/>

## Docs

Docs: <https://plausible.io/self-hosted-web-analytics>

## Repository

Repo: <https://github.com/plausible/analytics>

### Systemd file

```toml
[Unit]
Description=Plausible
Documentation=https://plausible.io/docs/
Requires=docker.service
After=docker.service
BindsTo=docker.service
ReloadPropagatedFrom=docker.service

[Service]
User=git
Group=git
RemainAfterExit=true
WorkingDirectory=/home/git/plausible
ExecStart=/usr/bin/docker-compose up -d
ExecStop=/usr/bin/docker-compose down
ExecReload=docker-compose up -d

[Install]
WantedBy=multi-user.target
```
