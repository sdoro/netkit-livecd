### reset postgres password

Per cambiare password all'utente postgress:


		sudo su - postgres
		psql
		ALTER USER postgres with password 'new-password';
		\q


[gist](https://gist.github.com/4054136)

