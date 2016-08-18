
# preseedcube

Debian preseed configuration for Ideascube hosts.

With password hashes inside, because Github is know to be harmless, right?

## Installer

So far the preseed handles the installation process only.

Quoting [Debian's wiki](https://wiki.debian.org/DebianInstaller/Preseed):

    Do not work off a `debconf-get-selections (--installer)` generated
    preseed.cfg but get the values from it and modify the example preseed file
    with them.


## Other packages

More packages may be installed by the preseed configuration.

Some of them might be preseeded as well. See `debconf-get-selections`

## HOWTO

This repo should be available over HTTP. Sometimes it can be as easy as:

    websrv $ python -m SimpleHTTPServer

Then the preseed file is available at `http://websrv:8000/go`. Let's get started:

* Boot on a `debian-8.5.0-amd64-DVD-1.iso` USB stick
* At the (semi)graphical menu, hit `Esc` to get a boot prompt
* Enter: `auto url=http://SOMEHOST/go`

The installer will grab the file and use its content.

NB: the `go` symbolic link makes it shorter, easier to type at the boot prompt.

