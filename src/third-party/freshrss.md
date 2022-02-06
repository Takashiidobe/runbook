# FreshRSS

Link: <https://rss.takashiidobe.com>

## Docs

Docs: <https://github.com/FreshRSS/FreshRSS/blob/edge/README.md>

## Repository

Repo: <https://github.com/FreshRSS/FreshRSS/>

## Systemd File

```toml
[Unit]
Description=FreshRSS
Requires=docker.service
After=docker.service
Documentation=https://freshrss.github.io/FreshRSS/en/
BindsTo=docker.service
ReloadPropagatedFrom=docker.service

[Service]
RemainAfterExit=true
WorkingDirectory=/home/git/FreshRSS/Docker/
ExecStart=/usr/bin/docker-compose up -d
ExecStop=/usr/bin/docker-compose down
ExecReload=docker-compose up -d

[Install]
WantedBy=multi-user.target
```
