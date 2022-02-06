# Newsboat

Repo: <https://sr.ht/~sircmpwn/aerc/>

Docs: <https://aerc-mail.org/>

Installation: `brew install aerc`

## Configuration

`accounts.conf`

```
[Personal]
source        = maildir://~/mail
outgoing      = /usr/local/bin/msmtpq
default       = gmail/INBOX
smtp-starttls = yes
from          = Takashi Idobe <idobetakashi@gmail.com>
copy-to       = Sent
```

`aerc.conf`

```
[viewer]
#
# Specifies the pager to use when displaying emails. Note that some filters
# may add ANSI codes to add color to rendered emails, so you may want to use a
# pager which supports ANSI codes.
#
# Default: less -R
# pager=/usr/local/bin/bat
# Prefer HTML over plain text.
alternatives=text/html,text/plain

[filters]
#
# Filters allow you to pipe an email body through a shell command to render
# certain emails differently, e.g. highlighting them with ANSI escape codes.
#
# The first filter which matches the email's mimetype will be used, so order
# them from most to least specific.
#
# You can also match on non-mimetypes, by prefixing with the header to match
# against (non-case-sensitive) and a comma, e.g. subject,text will match a
# subject which contains "text". Use header,~regex to match against a regex.
subject,~^\[PATCH=awk -f /usr/local/share/aerc/filters/hldiff
text/html=bash /usr/local/share/aerc/filters/html
# application/pdf=bash @SHAREDIR@/filters/pdf
# audio/mpeg=bash @SHAREDIR@/filters/mpeg
text/*=awk -f /usr/local/share/aerc/filters/plaintext
#image/*=catimg -w $(tput cols) -
```

`binds.conf`

```
# Binds are of the form <key sequence> = <command to run>
# To use '=' in a key sequence, substitute it with "Eq": "<Ctrl+Eq>"
# If you wish to bind #, you can wrap the key sequence in quotes: "#" = quit
<C-p> = :prev-tab<Enter>
<C-n> = :next-tab<Enter>
<C-t> = :term<Enter>

[messages]
q = :quit<Enter>

j = :next<Enter>
<Down> = :next<Enter>
<C-d> = :next 50%<Enter>
<C-f> = :next 100%<Enter>
<PgDn> = :next -s 100%<Enter>

k = :prev<Enter>
<Up> = :prev<Enter>
<C-u> = :prev 50%<Enter>
<C-b> = :prev 100%<Enter>
<PgUp> = :prev -s 100%<Enter>
g = :select 0<Enter>
G = :select -1<Enter>

J = :next-folder<Enter>
K = :prev-folder<Enter>

v = :mark -t<Enter>
V = :mark -v<Enter>

l = :view<Enter>
d = :prompt 'Really delete this message?' 'delete-message'<Enter>
D = :delete<Enter>
A = :archive flat<Enter>

C = :compose<Enter>

rr = :reply -a<Enter>
rq = :reply -aq<Enter>
Rr = :reply<Enter>
Rq = :reply -q<Enter>

c = :cf<space>
$ = :term<space>
! = :term<space>
| = :pipe<space>

/ = :search<space>
\ = :filter<space>
n = :next-result<Enter>
N = :prev-result<Enter>

[view]
q = :close<Enter>
| = :pipe<space>
D = :delete<Enter>
S = :save<space>
A = :archive flat<Enter>

f = :forward<Enter>
rr = :reply -a<Enter>
rq = :reply -aq<Enter>
Rr = :reply<Enter>
Rq = :reply -q<Enter>

H = :toggle-headers<Enter>
<C-k> = :prev-part<Enter>
<C-j> = :next-part<Enter>
J = :next<Enter>
K = :prev<Enter>

[compose]
# Keybindings used when the embedded terminal is not selected in the compose
# view
$ex = <C-x>
<C-k> = :prev-field<Enter>
<C-j> = :next-field<Enter>
<tab> = :next-field<Enter>

[compose::editor]
# Keybindings used when the embedded terminal is selected in the compose view
$noinherit = true
$ex = <C-x>
<C-k> = :prev-field<Enter>
<C-j> = :next-field<Enter>
<C-p> = :prev-tab<Enter>
<C-n> = :next-tab<Enter>

[compose::review]
# Keybindings used when reviewing a message to be sent
y = :send<Enter>
n = :abort<Enter>
p = :postpone<Enter>
q = :abort<Enter>
e = :edit<Enter>
a = :attach<space>

[terminal]
$noinherit = true
$ex = <C-x>

<C-p> = :prev-tab<Enter>
<C-n> = :next-tab<Enter>
```
