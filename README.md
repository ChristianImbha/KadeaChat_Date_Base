# Kadea Chat - Modélisation & Base de Données


1. Présentation du projet
Kadea Chat est une application de messagerie destinée aux apprenants de
Kadea. Ce dépôt présente la conception et la mise en place de sa base de
données relationnelle avec PostgreSQL.

La base de données est conçue pour organiser les utilisateurs, les
conversations, les participants, les messages et les statuts des
messages. Elle doit prendre en charge les conversations privées comme
les conversations de groupe.

2. Objectifs

- Organiser les données de l'application dans une base relationnelle.
- Définir les entités, leurs attributs et leurs relations.
- Représenter les relations entre utilisateurs et conversations.
- Définir les clés primaires, les clés étrangères et les contraintes
  d'intégrité.
- Préparer des données d'exemple et des requêtes SQL pour vérifier le
  fonctionnement du modèle.

3. Technologies utilisées

- PostgreSQL : système de gestion de base de données
  relationnelle.
- pgAdmin : outil d'administration et d'exécution des requêtes
  SQL.
- Draw.io : création des modèles et du dictionnaire de données.
- SQL : définition, manipulation et interrogation des données.

4. Modélisation

Le fichier Draw.io Modelisation/ChatKPI.drawio est organisé autour des
trois livrables demandés :

1. Dictionnaire de données : description des tables, attributs,
   types, contraintes et champs.
2. MCD (Modèle Conceptuel des Données) : représentation des
   entités, associations et cardinalités.
3. MLD (Modèle Logique des Données) : représentation relationnelle
   des tables, colonnes, clés primaires et clés étrangères.
Les principales tables du modèle sont :
- users : informations des utilisateurs.
- conversations : informations sur les conversations.
- conversation_users : association entre utilisateurs et
  conversations.
- messages : contenu des messages, auteur, conversation, date et
  statut.
- status : états associés aux messages.
La table d'association conversation_users permet de représenter la
relation plusieurs-à-plusieurs entre les utilisateurs et les
conversations.

5. Structure du dépôt
Kadea Chat Data base/
├── Data base/
│   └── Kadea_chat_Base_de_donnees.sql
├── Modelisation/
│   └── ChatKPI.drawio
├── Screen short/
│   ├── captures de création des tables
│   ├── captures d’insertion des données
│   └── captures des requêtes et de leurs résultats
└── README.md

6. Installation et exécution

1. Installer PostgreSQL et pgAdmin si nécessaire.
2. Ouvrir pgAdmin et se connecter au serveur PostgreSQL.
3. Créer une base de données nommée kadea_chat si elle n'existe pas
   déjà.
4. Ouvrir la base kadea_chat, puis lancer Query Tool.
5. Ouvrir le fichier SQL situé dans Data base/.
6. Exécuter le script et vérifier les messages d'exécution ainsi que
   les tables créées.
7. Exécuter les requêtes de test disponibles dans le script ou dans le
   travail SQL, puis comparer les résultats aux captures du dossier
   Screen short/.
Attention : avant d'exécuter un script qui supprime ou recrée des
tables, vérifier son contenu et sauvegarder toute donnée à conserver.

7. Captures pgAdmin
Le dossier Screen short/ contient des captures liées à la création des
tables, à l'insertion des données et à l'exécution de requêtes de
vérification.

Ces captures servent de preuves visuelles du travail réalisé dans
pgAdmin. Elles doivent correspondre à la version finale du script SQL.

8. Fichier Draw.io
Fichier du modèle : Modelisation/ChatKPI.drawio

Lien Draw.io en lecture seule : à compléter avec le lien de partage
configuré dans Draw.io ou dans l'emplacement où le fichier est hébergé.

9. Vérifications avant soumission
Avant la remise du projet, vérifier que :
- le script SQL permet de créer la structure attendue et contient les
  contraintes nécessaires ;
- les données d'exemple sont cohérentes entre utilisateurs,
  conversations, participants, messages et statuts ;
- les requêtes couvrent les besoins indiqués dans l'énoncé ;
- le dictionnaire de données, le MCD, le MLD et le script SQL
  utilisent les mêmes noms et les mêmes relations ;
- les captures d'écran correspondent aux résultats de la version
  finale ;
- le lien Draw.io en lecture seule a été ajouté et fonctionne.

