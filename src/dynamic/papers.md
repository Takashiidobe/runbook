# Papers

Link: <https://papers.takashiidobe.com>

## Repository

Repo: <https://github.com/Takashiidobe/papers>

## Systemd file

`papers.service`

```toml
[Unit]
Description=Papers

[Service]
type=oneshot
User=root
Group=root
WorkingDirectory=/home/git/papers
ExecStart=git pull
```

`papers.timer`

```toml
[Unit]
Description="Pull Papers Repo"

[Timer]
OnUnitActiveSec=1800s
OnBootSec=1800s

[Install]
WantedBy=timers.target
```
