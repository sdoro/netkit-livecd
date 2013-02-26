### reset postgres password

Per cambiare password all'utente postgress:


		sudo su - postgres
		psql
		ALTER USER postgres with password 'new-password';
		\q


[gist](https://gist.github.com/4054136)


### uso di postgres da riga di comando


Tramite il package postgresql-client-common che contiene il
comando psql:


	$ psql -h 192.168.100.77 -p 5433 -U user -d database


dove con -h specifichiamo l'IP address, con -p la porta TCP,
con -U l'utente e con -d il nome del database.


### startup postgresql

Se lo startup del server non funziona e risulta un errore di SHMMAX
basta dare il comando:

	# echo 39321600 > /proc/sys/kernel/shmmax

e poi far partire il servizio postgresql:

	# /etc/init.d/postgresql start


