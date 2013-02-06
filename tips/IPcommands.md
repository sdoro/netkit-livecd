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


set IP address (10.0.0.1/16):

		# ip address add 10.1.0.1/16 broadcast 10.0.255.255 dev eth0

or:

		# ip address add 10.1.0.1/16 brd + dev eth0

show IP address:

		# ip addr show eth0
		3: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen 1000
    link/ether 00:00:00:00:00:01 brd ff:ff:ff:ff:ff:ff
    inet 10.1.0.1/16 brd 10.1.255.255 scope global eth0
    inet6 fe80::200:ff:fe00:1/64 scope link 
       valid_lft forever preferred_lft forever


Add a route:

		# ip route add 10.2.0.0/16 via 10.1.0.2


Show routes:

		# ip route show
		10.2.0.0/16 via 10.1.0.2 dev eth0 
		10.1.0.0/16 dev eth0  proto kernel  scope link  src 10.1.0.1



