# Newsboat

Repo: <https://github.com/newsboat/newsboat>

Docs: <https://newsboat.org/releases/2.10.1/docs/newsboat.html>

Installation: `brew install newsboat`

## Configuration

`~/.newsboat/config`

```
# general settings
auto-reload yes
max-items 50

# externel browser
browser "open %u"
macro m set browser "/usr/local/bin/mpv %u"; open-in-browser ; set browser "/usr/local/bin/w3m %u"
macro l set browser "/usr/local/bin/firefox %u"; open-in-browser ; set browser "/usr/local/bin/w3m %u"

# unbind keys
unbind-key ENTER
unbind-key j
unbind-key k
unbind-key J
unbind-key K

# Fix g and GG
unbind-key g # bound to `sort` by default
bind-key g home
unbind-key G # bound to `rev-sort` by default
bind-key G end

# bind keys - vim style
bind-key j down
bind-key k up
bind-key l open
bind-key h quit

# highlights
highlight article "^(Title):.*$" blue default
highlight article "https?://[^ ]+" red default
highlight article "\\[image\\ [0-9]+\\]" green default

urls-source "freshrss"
freshrss-url "https://rss.takashiidobe.com/api/greader.php"
freshrss-login "freshrss"
freshrss-password "$PASSWORD"
freshrss-min-items 500
freshrss-show-special-feeds "false"
```

`~/.newsboat/urls`

```
http://jvns.ca/atom.xml
https://hnrss.org/frontpage?count=50
https://lobste.rs/rss
https://danluu.com/atom.xml
https://www.elidedbranches.com/atom.xml
https://huyenchip.com/feed.xml
https://randomascii.wordpress.com/feed.xml
https://mcfunley.com/feed.xml
https://eli.thegreenplace.net/feeds/all.atom.xml
https://brooker.co.za/blog/atom.xml
https://lab.whitequark.org/atom.xml
http://yosefk.com/blog/feed
http://pvk.ca/atom.xml
https://medium.com/feed/@steve-yegge/
https://medium.com/feed/@copyconstruct/
https://medium.com/feed/@vaidehijoshi/
http://steve-yegge.blogspot.com/atom.xml
https://stopa.io/feed.atom
https://idea.popcount.org/rss.xml
https://mrale.ph/atom.xml
https://raphlinus.github.io/feed
https://neverworkintheory.org/atom.xml
https://scattered-thoughts.net/atom.xml
https://drewdevault.com/blog/index.xml
https://kamalmarhubi.com/blog/feed.xml
https://fasterthanli.me/index.xml
https://www.evanmiller.org/news.xml
https://brson.github.io/feed
https://www.youtube.com/feeds/videos.xml?channel_id=UC0VVYtw21rg2cokUystu2Dw
https://www.youtube.com/feeds/videos.xml?channel_id=UCQHX6ViZmPsWiYSFAyS0a3Q
https://www.youtube.com/feeds/videos.xml?channel_id=UCd6Za0CXVldhY8fK8eYoIuw
https://jamesclear.com/feed
https://feeds.feedburner.com/StudyHacks
http://export.arxiv.org/rss/cs
https://jpop-recommend.blogspot.com/atom.xml
https://yumehokori.wordpress.com/feed
https://takashiidobe.com/rss.xml
http://cliffle.com/rss.xml
```
