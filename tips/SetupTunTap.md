### Setup Tun/Tap

Read instructions in 'Networking settings' paragraph inside 'man vstart'.

Example: connect eth0 interface of virtual machine 'vm'
with the host machine where TAP-ADDRESS=10.0.0.1 and GUEST-ADDRESS=10.0.0.2:

		lab.conf
		[...]
		vm[0]=tap,10.0.0.1,10.0.0.2
		[...]


After the 'lstart' command it is possible to display actual Natting in
'host' with:

	# iptables -t nat -L POSTROUTING


### Low lewel details:


Topology:

           +---- eth0
           |
     Host -+                            +- guest
           |                            |
           +---- tap0          eth0 ----+


    host$ sudo tunctl -u `whoami`
    Set 'tap0' persistent and owned by uid 1000

    host# ifconfig tap0 $TAP-ADDRESS; \
          echo "1" > /proc/sys/net/ipv4/ip_forward; \
          iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

    guest# ifconfig eth0 $GUEST-ADDRESS up
           route add default gateway $TAP-ADDRESS


