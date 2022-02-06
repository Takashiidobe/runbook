# Teddit

Link: <https://reddit.takashiidobe.com/>

## Docs

Docs: <https://codeberg.org/teddit/teddit/src/branch/main/README.md>

## Repository

Repo: <https://codeberg.org/teddit/teddit>

### Systemd file

```toml
[Unit]
Description=teddit
Requires=docker.service
After=docker.service
Documentation=https://github.com/teddit-net/teddit
BindsTo=docker.service
ReloadPropagatedFrom=docker.service

[Service]
RemainAfterExit=true
WorkingDirectory=/home/git/teddit
ExecStart=/usr/bin/docker-compose up -d
ExecStop=/usr/bin/docker-compose down
ExecReload=docker-compose up -d

[Install]
WantedBy=multi-user.target
```
