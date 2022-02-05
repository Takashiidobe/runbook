# Runbook

This repository is a Runbook for explaining my personal setup using `mdbook`.

Web Version here: [Runbook](https://runbook.takashiidobe.com/)

## Setup

- Run `make install` to install the dependencies for this project. (This currently only works on Mac).
- Otherwise, the only dependency required is `mdbook`, which can be found here: [Mdbook](https://rust-lang.github.io/mdBook/)

## Development

- Since Mdbook only shows files that are linked to in `SUMMARY.md`, there is a python helper file (located in `bin/generate_toc`) that will generate an up to date version of your book by running it.
- `make` or `make serve` will serve an HTML version of your documentation on localhost:3000.
- `make build` will generate a deployable HTML version of your documentation in the `book` directory.
- `make clean` will delete the contents of the `book` directory.
