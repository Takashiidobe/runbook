# Recipe Scraper

Link: <https://recipes.takashiidobe.com>

## Repository

Repo: <https://github.com/Takashiidobe/web-recipes>

## Systemd file

```toml
[Unit]
Description=web-recipes
Documentation=https://caddyserver.com/docs/
After=network.target network-online.target
Requires=network-online.target

[Service]
Type=notify
User=git
Group=git
WorkingDirectory=/home/git/web-recipes
ExecStart=/usr/local/bin/gunicorn -b 0.0.0.0:4321 wsgi:app
ExecReload=/usr/local/bin/gunicorn -b 0.0.0.0:4321 wsgi:app
TimeoutStopSec=5s
LimitNOFILE=1048576
LimitNPROC=512
PrivateTmp=true
ProtectSystem=full
AmbientCapabilities=CAP_NET_BIND_SERVICE

[Install]
WantedBy=multi-user.target
```
