# J-pop Server

Link: <https://jpop-server.takashiidobe.com>

## Repository

Repo: <https://github.com/Takashiidobe/jpop-server>

## Systemd file

```toml
[Unit]
Description=jpop-server
Documentation=https://caddyserver.com/docs/
After=network.target network-online.target
Requires=network-online.target

[Service]
Type=simple
User=git
Group=git
WorkingDirectory=/home/git/jpop-server
ExecStart=yarn prod
ExecReload=yarn prod
TimeoutStopSec=5s
LimitNOFILE=1048576
LimitNPROC=512
PrivateTmp=true
ProtectSystem=full
AmbientCapabilities=CAP_NET_BIND_SERVICE

[Install]
WantedBy=multi-user.target
```
