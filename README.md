
# preseedcube

Debian preseed configuration for Ideascube hosts.


## Installer

So far the preseed handles the installation process only.

Quoting [Debian's wiki](https://wiki.debian.org/DebianInstaller/Preseed):

    Do not work off a `debconf-get-selections (--installer)` generated
    preseed.cfg but get the values from it and modify the example preseed file
    with them.


## Other packages

More packages may be installed by the preseed configuration.

Some of them might be preseeded as well. See `debconf-get-selections`

