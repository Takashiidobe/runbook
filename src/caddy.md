# Caddy

## Installing Caddy

On Ubuntu:

```sh
sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo tee /etc/apt/trusted.gpg.d/caddy-stable.asc
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install caddy
```

## Domain Configuration

- With a Google Domain, Go to the Custom Resource Records, and set an
  `A` level record with a `TTL` to `1h` and set the data field to the
  IPv4 address you have configured.
- Wait for about 5 minutes for the changes to take effect.
- Port 80 and Port 443 must be open.
- Run the following commands to open traffic to port 80 and 443.
- `sudo iptables -A INPUT -p tcp -m multiport --dports 80,443 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT`

## Persisting iptable rules

- `sudo apt-get install iptables-persistent` will allow iptable rules
  to persist through restarts
- at any time if you update rules, run
  `sudo netfilter-persistent save` to have them persist.

## Running the Caddyfile

- Create a `Caddyfile` with the following contents, in
  `/etc/caddy/Caddyfile`

```sh
domain.com

respond "Hello, Https!"
```

- Then, when you go to the domain, you should notice the server being
  served over https with a cert from letsencrypt.

## As Reverse Proxy

- You can also use Caddy as a reverse proxy:
- run your server on a different port and have it route to it by using
  this `Caddyfile`

```sh
domain.com

reverse_proxy 127.0.0.1:${PORT}
```
