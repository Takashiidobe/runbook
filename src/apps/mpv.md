# Mpv

Repo: <https://github.com/yt-dlp/yt-dlp>

Docs: <https://github.com/yt-dlp/mpv>

Installation: `sudo dnf install mpv`, `brew install mpv`

## Usage

A audio/video player based on MPlayer.
See also: `mplayer`, `vlc`.
More information: <https://mpv.io>.

Play a video or audio from a URL or file: (yt-dlp links are supported).

    mpv url|path/to/file'

Jump backward/forward 5 seconds:

    LEFT <or> RIGHT

Jump backward/forward 1 minute:

    DOWN <or> UP

Decrease or increase playback speed by 10%:

    [ <or> ]

Take a screenshot of the current frame (saved to `./mpv-shotNNNN.jpg` by default):

    s

Play a file at a specified speed (1 by default):

    mpv --speed=0.01..100 path/to/file

Play a file using a profile defined in the `mpv.conf` file:

    mpv --profile profile_name path/to/file

Display the output of webcam or other video input device:

    mpv /dev/video0


## Configuration

`~/.config/mpv/mpv.conf`

```
hwdec=vaapi
sub-auto=fuzzy
slang=en
# use this for normal youtube video (watch streams in 1080p
# ytdl-format=bestvideo[height<=?1080]+bestaudio/best
# use this for bad internet (480p)
ytdl-format=bestvideo[height<=?480]+bestaudio/best[height<=?480]/worst
ytdl-raw-options=ignore-config=,sub-lang=en,write-sub=,write-auto-sub=
```
