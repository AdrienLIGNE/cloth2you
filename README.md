﻿# cloth2you

Vous êtes créateur·rice et les algorithmes des réseaux sociaux ne vous valorisent pas ? Nous vous présentons cloth2you : le premier site web de vente aux enchères de vêtements faits main. Nous avons l'ambition de proposer une solution qui respecte vos droits et vous permet de vous développer.

Vous rêvez de porter des créations uniques ? Tout en privilégiant l'économie locale et les petits acteurs de la mode ? 
Découvrez cloth2you.

## Description des technologies

Le projet est basé sur un stack PERN, donc Postgresql,Express,React et Nodejs. Il utilise aussi Sequelize, un ORM, pour l'accès à la base de données.

![Schema_architecture_technique](https://user-images.githubusercontent.com/107505856/235865218-7404eb51-54f6-4f5c-8776-0d912f5b93a2.png)


## Utilisation 
Installer les dépendances nodes nécessaires en effectuant la commande `npm i` dans chacun des dossier api et ui.
Lancer l'api et l'application react sur 2 ports différents en local, simplement avec `npm start` en se positionnant dans le dossier api puis dans le dossier ui.

Il est aussi possible de simuler un fonctionnement en production: positionnez vous dans le dossier api, puis lancez la commande `npm run build`, ce qui va build l'application react, qui va être servie par le backend nodejs Express; il ne vous reste plus qu'à lancer ce dernier avec `npm start`.

Vous pouvez accéder à l'application web en vous rendant à l'addresse indiquée dans votre terminal par la commande `npm start`

## Base de données

Pour que l'application fonctionne, il vous faut une base de données en postgreSQL, qui contiendra le contenu du site.
Il convient de créer un fichier `.env` à la racine du projet api avec les identifiants de connexion de la manière suivante :

DB_HOST=`...`

DB_USER=`...`

DB_PASSWORD=`...`

DB_NAME=`...`
  
Remplacez les `...` par les informations correspondantes

  

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


