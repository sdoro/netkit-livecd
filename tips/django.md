### Setup for django


Per installare tutto il software per trasformare la tua
penna in ambiente di sviluppo django + Heroku lancia i comandi:

	cd /tmp
	# export https_proxy="http://proxy.zuccante.it:8080/"
	wget --no-check-certificate https://github.com/sdoro/netkit-livecd/blob/master/tips/files/mk-django.sh
	chmod a+x /tmp/mk-django.sh

Poi lancia il comando (che scarica e applica circa 46MB di aggiornamenti):

	su -
	# export https_proxy="http://proxy.zuccante.it:8080/"
	/tmp/mk-django.sh

ora con molta calma aspetta la terminazione (anche 5 minuti) del comando:

	halt


Nel caso di installazione a scuola, data la presenza del proxy,
occorre togliere i commenti nei due posti dove viene impostata la
variabile https_proxy.

