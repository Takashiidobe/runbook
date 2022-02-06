# Recipe Scraper

Link: <https://books.takashiidobe.com>

## Repository

Repo: <https://github.com/Takashiidobe/books>

## Systemd file

`books.service`

```toml
[Unit]
Description=Books

[Service]
type=oneshot
User=root
Group=root
WorkingDirectory=/home/git/books
ExecStart=git pull
```

`books.timer`

```toml
[Unit]
Description="Pull Books Repo"

[Timer]
OnUnitActiveSec=1800s
OnBootSec=1800s

[Install]
WantedBy=timers.target
```
