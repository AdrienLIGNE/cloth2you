# cloth2you

Vous êtes créateur·rice et les algorithmes des réseaux sociaux ne vous valorisent pas ? Nous vous présentons cloth2you : le premier site web de vente aux enchères de vêtements faits main. Nous avons l'ambition de proposer une solution qui respecte vos droits et vous permet de vous développer.

Vous rêvez de porter des créations uniques ? Tout en privilégiant l'économie locale et les petits acteurs de la mode ? 
Découvrez cloth2you.

## Utilisation 

Pour se connecter depuis le réseau interne de l'IUT2 : ça se passe [ici](https://192.168.14.221).

  

## Connexion à la base de données

  

Pour se connecter à la base de données, il faut utiliser le protocole HTTPS et l'adresse IP suivante : 192.168.14.221 depuis le réseau de l'IUT2. Il faut ensuite taper la commande suivante dans un shell :

  

	ssh dbuser@192.168.14.221

  

Ensuite, pour accéder à la base de données, taper :

  

	psql cloth2you

  

## Tests unitaires

  

Pour faire les tests unitaires, il faut remplacer dans /api/config/db.config.js :

  

	const hostName = process.env.DB_HOST;

	const userName = process.env.DB_USER;

	const password = process.env.DB_PASSWORD;

	const database = process.env.DB_NAME;

  

par

  

	const hostName = '127.0.0.1';

	const userName = 'node';

	const password = '4m6%LQH4mk3L';

	const database = 'cloth2you';

  

Et dans la définition de `sequelize (const sequelize = new Sequelize...) `:

Il faut remplacer le port par 5432.

  ## Participants

Elle a été développée par les étudiants suivants :

  

- Etienne CHAZELLE

- Nathan HUGON-HOSTENS

- Adrien LIGNE

- Alexis PRETTI

- Milo NIEMAZ

- Lilian GARDON


