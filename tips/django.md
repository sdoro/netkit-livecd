### Setup for django


Per installare tutto il software per trasformare la tua
penna in ambiente di sviluppo django + Heroku lancia i comandi:

	cd /tmp
	# export https_proxy="http://proxy.zuccante.it:8080/"
	wget --no-check-certificate https://s3-eu-west-1.amazonaws.com/zuccalab/knoppix/run.sh
	chmod a+x /tmp/run.sh

Poi lancia il comando (che scarica e applica circa 46MB di aggiornamenti):

	su -
	# export https_proxy="http://proxy.zuccante.it:8080/"
	/tmp/run.sh

ora con molta calma aspetta la terminazione (anche 5 minuti) del comando:

	halt


Nel caso di installazione a scuola, data la presenza del proxy,
occorre togliere i commenti nei due posti dove viene impostata la
variabile https_proxy.

