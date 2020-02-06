
# preseedcube

Debian preseed configuration for Ideascube hosts.

With password hashes inside, because Github is know to be harmless, right?
Well, ideascube password is `ideascube` and root's is `root`. This makes it
easier to get into the server to run the bootstrap scripts.

## Installer

So far the preseed handles the installation process only.

Quoting [Debian's wiki](https://wiki.debian.org/DebianInstaller/Preseed):

    Do not work off a `debconf-get-selections (--installer)` generated
    preseed.cfg but get the values from it and modify the example preseed file
    with them.


## Other packages

More packages may be installed by the preseed configuration.

Some of them might be preseeded as well. See `debconf-get-selections`

## Debian releases

This repository has been created for Debian 8 Jessie. Support for Buster was
added later, and is a simple copy of Jessie's. The `go` shortcut points at the
Buster preseed file.

## HOWTO

This repo should be available over HTTP. Sometimes it can be as easy as:

    websrv $ python -m SimpleHTTPServer

Then the preseed file is available at `http://websrv:8000/go`.

It is also available at http://drop.bsf-intranet.org/preseedcube/go

And our LAN exposes it at http://cube/d-i/buster/go

Let's get started:

* Boot on a `debian-8.5.0-amd64-DVD-1.iso` USB stick
* At the (semi)graphical menu, hit `Esc` to get a boot prompt
* Enter: `auto url=cube`

The installer will grab the file and use its content.

NB: the `go` symbolic link makes it shorter, easier to type at the boot prompt.

