# Monitor

Link: <https://monitor.takashiidobe.com/>

## Tech Stack

This site uses [Gotty](https://github.com/yudai/gotty) to cast terminal
output of [Zenith](https://github.com/bvaisvil/zenith) to be viewable
through the web.

## Systemd file

```toml
[Unit]
Description=Gotty
After=network.target

[Service]
Environment="GOTTY_PORT=61208"
Environment="GOTTY_CREDENTIAL=admin:iOWiT1v7hpbgM/5jB4Tk6A"
ExecStart=gotty zenith --disable-history
Restart=on-abort
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```
