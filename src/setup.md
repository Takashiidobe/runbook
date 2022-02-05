# Setup

Docs here: <https://github.com/pratiktri/server_init_harden>

Setting up a VPS:

First, create a new Debian based VM (Debian or Ubuntu).

Then, fetch the hardening script:

```sh
wget -q https://sot.li/hardensh -O init-linux-harden.sh && \
bash ./init-linux-harden.sh -d -q -hide
```

Run the tail command to get the username, password, passphrase, and key pair for the new user to login as. Add the key to your `~/.ssh` folder and delete the line in your `~/.ssh/known_hosts` file that contains the ip address to the VM.

Next, run:

```sh
ssh-agent
```

Copy paste the top two lines it emits then:

```sh
ssh-add ${path_to_key}
```

And enter the passphrase for the key.

Finally, set an alias in your `bashrc` file for the ssh command to invoke the ssh login, since this can be a pain to type out. And you're done: a fully secured VM in a few minutes that is ready to serve traffic.

```sh
Host linode
  HostName ${IP_ADDRESS}
  User ${USER}
  IdentityFile ${PATH_TO_PEM_FILE}
```
