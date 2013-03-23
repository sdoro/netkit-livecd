### Reset postgres password

Per cambiare password all'utente postgress (con server attivato):


	# sudo su - postgres
	$ psql
	postgres=# ALTER USER postgres with password 'new-password';
	\q
	$ exit
	#


[gist](https://gist.github.com/4054136)


### Uso di postgres da riga di comando


Postgresql può essere usato tramite il comando psql contenuto
nel package postgresql-client-common. Un esempio:


	$ psql -h IPaddress -p nPort -U userName -d databaseName


dove con -h specifichiamo l'IP address del server, con -p la porta TCP
dove è in ascolto il server,
con -U l'utente del database e con -d il nome del database.


### Startup postgresql

Se lo startup del server non funziona e risulta un errore di SHMMAX
basta dare il comando:

	# echo 39321600 > /proc/sys/kernel/shmmax

e poi far partire il servizio postgresql:

	# /etc/init.d/postgresql start


