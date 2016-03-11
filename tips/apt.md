
### install in netkit vm filesystem

Build a tuntap configuration lab so that you vm have internet connection
with NATting. Start you lab and then edit
`/etc/apt/sources.list`, remove everything and add
the following lines:

    deb http://archive.debian.org/debian/ lenny contrib main non-free
    deb http://archive.debian.org/debian-security lenny/updates main

Run `apt-get update` and then install your package. If you want to
save the downloaded package see `/var/cache/apt/archives/` directory
and copy your choice into `/hostlab` directory for later use.

