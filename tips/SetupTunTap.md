### Setup Tun/Tap

Read instructions in 'Networking settings' paragraph inside 'man vstart'.

Example: connect eth0 interface of virtual machine 'vm'
with the host machine where TAP-ADDRESS=10.0.0.1 and GUEST-ADDRESS=10.0.0.2:

		lab.conf
		[...]
		vm[0]=tap,10.0.0.1,10.0.1.2
		[...]


Display actual Natting in 'host':

	# iptables -t nat -L POSTROUTING

