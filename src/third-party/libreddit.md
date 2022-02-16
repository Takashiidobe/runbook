# Libreddit

Link: <https://reddit.takashiidobe.com/>

## Docs

Docs: <https://github.com/spikecodes/libreddit/>

## Repository

Repo: <https://github.com/spikecodes/libreddit>

## Installation

`wget https://github.com/spikecodes/libreddit/releases/download/v0.21.7/libreddit`

### Systemd file

```toml
[Unit]
Description=Libreddit
After=syslog.target
After=network.target

[Service]
RestartSec=2s
Type=simple
User=git
Group=git
ExecStart=/usr/bin/libreddit -p 60012
Restart=always
Environment=USER=git

[Install]
WantedBy=multi-user.target
```
