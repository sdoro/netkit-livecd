### IP commands

Read instructions in 
[IP Command Reference](https://github.com/sdoro/netkit-livecd/blob/master/tips/docs/ip-cref.pdf?raw=true).




set MAC address:

		# ip link set eth0 address 00:00:00:00:00:01
		# ip link set eth0 up


show link:

		# ip link show eth0
		3: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen 1000
    link/ether 00:00:00:00:00:01 brd ff:ff:ff:ff:ff:ff


