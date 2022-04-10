# Joplin

Link: <https://joplin.takashiidobe.com/>

## Docs

Docs: <https://joplinapp.org/>

## Repository

Repo: <https://github.com/laurent22/joplin>

### Systemd file

```toml
[Unit]
Description=joplin
Requires=docker.service
After=docker.service
Documentation=https://github.com/laurent22/joplin
BindsTo=docker.service
ReloadPropagatedFrom=docker.service

[Service]
RemainAfterExit=true
WorkingDirectory=/home/git/joplin
ExecStart=/usr/bin/docker-compose up -d
ExecStop=/usr/bin/docker-compose down
ExecReload=/usr/bin/docker-compose up -d

[Install]
WantedBy=multi-user.target
```
