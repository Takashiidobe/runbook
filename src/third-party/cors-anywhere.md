# Cors Anywhere

Link: <https://cors-anywhere.takashiidobe.com/>

## Docs

Docs: <https://github.com/Rob--W/cors-anywhere/blob/master/README.md>

## Repository

Repo: <https://github.com/Rob--W/cors-anywhere>

### Systemd file

```toml
[Unit]
Description=cors-anywhere
Documentation=https://github.com/Rob--W/cors-anywhere
After=network.target network-online.target
Requires=network-online.target

[Service]
Type=simple
User=git
Group=git
WorkingDirectory=/home/git/cors-anywhere
ExecStart=/home/git/cors-anywhere/app.js
ExecReload=/home/git/cors-anywhere/app.js
TimeoutStopSec=5s
LimitNOFILE=1048576
LimitNPROC=512
PrivateTmp=true
ProtectSystem=full
AmbientCapabilities=CAP_NET_BIND_SERVICE

[Install]
WantedBy=multi-user.target
```
