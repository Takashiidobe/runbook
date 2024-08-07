# Panamax

Panamax is a way to download all rust crates offline.

Repo: <https://github.com/panamax-rs/panamax>

Docs: <https://github.com/panamax-rs/panamax>

## Installation

Panamax is installed through cargo: `cargo binstall panamax`

## Usage

To install panamax:

## Configuration

To use panamax when adding crates:

`~/.cargo/config.toml`

```
[source.panamax-sparse]
registry = "sparse+http://localhost:27428/index/"

[source.crates-io]
replace-with = "panamax-sparse"
```

The config file for the crate mirror.

`~/crates/mirror.toml`

```
# This is a Panamax mirror. It is a self-contained directory made to be easily copied
# to an offline network or machine via rsync, USB, or another method.

# When offline, Panamax also includes a "serve" command that can be used to serve
# rustup and cargo clients from the mirror. This will also give setup instructions
# on the homepage.

[mirror]
# Global mirror settings.


# Number of download retries before giving up.
retries = 5


# Contact information for the user agent.
# This is entirely optional, and is not required for the crates.io CDN.
# You may want to set this if you are mirroring from somewhere else.
# contact = "your@email.com"


[rustup]
# These are the configuration parameters for the rustup half of the mirror.
# This will download the rustup-init files, as well as all components needed
# to run Rust on a machine.


# Perform rustup synchronization. Set this to false if you only want to mirror crates.io.
sync = false


# Whether to mirror XZ archives. These archives are more efficiently compressed
# than the GZ archives, and rustup uses them by default.
download_xz = true
# Whether to mirror GZ archives, for further backwards compatibility with rustup.
download_gz = false


# Number of downloads that can be ran in parallel.
download_threads = 16


# Where to download rustup files from.
source = "https://static.rust-lang.org"


# How many historical versions of Rust to keep.
# Setting these to 1 will keep only the latest version.
# Setting these to 2 or higher will keep the latest version, as well as historical versions.
# Setting these to 0 will stop Panamax from downloading the release entirely.
# Removing the line will keep all release versions.
keep_latest_stables = 1
keep_latest_betas = 0
keep_latest_nightlies = 0


# Pinned versions of Rust to download and keep alongside latest stable/beta/nightly
# Version specifiers should be in the rustup toolchain format:
#
# <channel>[-<date>][-<host>]
#
# <channel>       = stable|beta|nightly|<major.minor>|<major.minor.patch>
# <date>          = YYYY-MM-DD
# <host>          = <target-triple>
#
# e.g. valid versions could be "1.42", "1.42.0", and "nightly-2014-12-18"
# Uncomment the following lines to pin extra rust versions:

pinned_rust_versions = []


# UNIX platforms to include in the mirror
# Uncomment the following lines to limit which platforms get downloaded.
# This affects both rustup-inits and components.

platforms_unix = [
    "x86_64-unknown-linux-gnu",
    "aarch64-linux-android"
]


# Windows platforms to include in the mirror
# Uncomment the following lines to limit which platforms get downloaded.
# This affects both rustup-inits and components.

platforms_windows = []


# Whether to download the rustc-dev component.
# This component isn't always needed, so setting this to false can save lots of space.
download_dev = false


[crates]
# These are the configuration parameters for the crates.io half of the mirror.
# This will download the crates.io-index, as well as the crates themselves.
# Once downloaded, it will then (optionally) rewrite the config.json to point to your mirror.


# Perform crates synchronization. Set this to false if you only want to mirror rustup.
sync = true


# Number of downloads that can be ran in parallel.
download_threads = 64


# Where to download the crates from.
# The default, "https://crates.io/api/v1/crates", will actually instead use the corresponding
# url at https://static.crates.io in order to avoid a redirect and rate limiting
source = "https://crates.io/api/v1/crates"


# Where to clone the crates.io-index repository from.
source_index = "https://github.com/rust-lang/crates.io-index"


# URL where this mirror's crates directory can be accessed from.
# Used for rewriting crates.io-index's config.json.
# Remove this parameter to perform no rewriting.
# If removed, the `panamax rewrite` command can be used later.
base_url = "http://localhost:27428/crates"
```
