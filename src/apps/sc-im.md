# Sc-im

Sc-im is a tui for spreadsheets.

## Installation

I build sc-im from source:

```
$ git clone https://github.com/andmarti1424/sc-im.git
cd sc-im/src
make
# change prefix in Makefile to ~/.local
make install
```

## Configuration

`~/.config/sc-im/scimrc`

```
set autocalc
set numeric
set numeric_decimal=0
set overlap
set xlsx_readformulas
```

Sc-im can be used to edit csvs, xlsx, and other files.
