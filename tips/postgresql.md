### reset postgres paswword

Per cambiare password all'utente postgress:


		sudo su - postgres
		psql
		ALTER USER postgres with password 'new-password';
		\q


<script src="https://gist.github.com/4054136.js"></script>
