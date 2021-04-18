Jednoducha message web aplikacia pouzivajuca Flask, Nginx a Postgres.

Nalsedoval som navod: https://realpython.com/dockerizing-flask-with-compose-and-machine-from-localhost-to-the-cloud/

Aplikaciu spustime skriptom "start-app".

Aplikaciu zastavime skriptom "stop-app"
Tento skript pouziva "docker stop", teda spravy poslane do aplikacie ktore sa ulozili do databazy budu dostupne aj po opatovnom spusteni aplikacie. Databaza teda bezi v perzistentom volume.

Aplikaciu zastavime a kompletne odstranime skriptom "stop-and-remove-app".

Sucasti:

Postgres databaza:

	Bezi na porte 5432
	Buildnuta z oficialneho PostgreSQL imagu

Nginx sluzba:

	Bezi na porte 8080
	Pouzivana ako reverse proxy, presmerovanie trafiky bud do Flask aplikacie, alebo do statickych suborov
	Buildnute z uz nedrziavaneho tutum/nginx. Kvoli tomuto mi niektore pully/instalacie trvaju dost dlho. Niekedy aj 10 minute, treba to len nechat bezat a eventuelne sa vsetko stiahne.

Flask aplikacia:

	Bezi na exposnutom porte 8000
	Nepodarilo sa mi nastavit aby Flask appka bezala na konstantnej aplikaci. V start skripte je preto implementovany "docker inspect" ktory vypise na ktorej lokalnej IP aplikacia bezi. Je to trosku otravnejsie ale myslim si ze zvladnutelne.