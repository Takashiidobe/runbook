# Linkding

Link: <https://bookmarks.takashiidobe.com/bookmarks>

## Docs

Docs: <https://github.com/sissbruecker/linkding/blob/master/docs/API.md>

## Repository

Repo: <https://github.com/sissbruecker/linkding>

### Systemd file

```toml
[Unit]
Description=linkding
Requires=docker.service
After=docker.service
Documentation=https://github.com/sissbruecker/linkding/blob/master/docs/API.md
BindsTo=docker.service
ReloadPropagatedFrom=docker.service

[Service]
RemainAfterExit=true
WorkingDirectory=/home/git/linkding
ExecStart=/usr/bin/docker-compose up -d
ExecStop=/usr/bin/docker-compose down
ExecReload=docker-compose up -d

[Install]
WantedBy=multi-user.target
```
