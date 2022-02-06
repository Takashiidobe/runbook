# Nitter

Link: <https://twitter.takashiidobe.com/>

## Docs

Docs: <https://github.com/zedeus/nitter/blob/master/README.md>

## Repository

Repo: <https://github.com/zedeus/nitter>

### Systemd file

```toml
[Unit]
Description=nitter
Requires=docker.service
After=docker.service
Documentation=https://github.com/zedeus/nitter
BindsTo=docker.service
ReloadPropagatedFrom=docker.service

[Service]
RemainAfterExit=true
WorkingDirectory=/home/git/nitter
ExecStart=/usr/bin/docker-compose up -d
ExecStop=/usr/bin/docker-compose down
ExecReload=docker-compose up -d

[Install]
WantedBy=multi-user.target
```
