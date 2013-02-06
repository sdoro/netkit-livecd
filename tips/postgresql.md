### reset postgres password

Per cambiare password all'utente postgress:


		sudo su - postgres
		psql
		ALTER USER postgres with password 'new-password';
		\q


[gist](https://gist.github.com/4054136)

Se lo startup del server non funziona e risulta un errore di SHMMAX
basta dare il comando:

	# echo 39321600 > /proc/sys/kernel/shmmax

e poi far ripartire il postgresql.

