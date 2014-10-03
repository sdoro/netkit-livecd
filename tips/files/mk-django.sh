# Download all needed Debian packages
wget --no-check-certificate https://github.com/sdoro/netkit-livecd/raw/master/tips/files/devDjango.deb.tgz
# Install all downloaded packages
tar zxf devDjango.deb.tgz
dpkg -i *.deb
# cleanup (before next reboot)
rm -f *.deb
# BOT
