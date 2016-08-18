
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

* Boot on a `debian-8.5.0-amd64-DVD-1.iso` USB stick
* At the (semi)graphical menu, hit `Esc` to get a boot prompt
* Enter: `auto url=http://SOMEHOST/go`

The installer will grap the file and use its content.

