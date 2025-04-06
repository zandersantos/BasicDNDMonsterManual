# README
This Project will be used for the Introduction Project in the Fullstack Web Development Course in the Business Information Technology program at Red River College.

This Project will be later refined, extended, and become a part of a larger project.

Author: Zander Santos
Dungeons and Dragons Monster Manual
  -A user is able to search a monster, action or sense and see the monsters abilities, actions, senses, and associated images.

APIS USED:
- https://www.dnd5eapi.co/api/monsters

## Models
Monster
  - id:integer (auto incrementing PK)
  - name:string
  - armour_class:int
  - hitpoints:string
  - speed:int
  - hit_dice:string
  - img_url:string

Monster_Senses
  - id:integer (auto incrementing PK)
  - sense_type:string
  - sense_range:string
  - monster_id:integer (FK)

Ability
  - id:integer (auto incrementing PK)
  - name:string
  - description:string

Monster_Ability
(Joiner Table to let Abilities have multiple Monsters)
  - id:integer (auto incrementing PK)
  - monster_id:integer (FK)
  - abilities_id:integer (FK)

Action
  - id:integer (auto incrementing PK)
  - name:string
  - description:string
  - damage_type:string
  - damage_dice:string

Monster_Action
(Joiner Table to let Actions have multiple Monsters)
  - id:integer (auto incrementing PK)
  - monster_id:integer (FK)
  - actions_id:integer (FK)

Monster_Image
  - url:string
  - monster_id:integer (FK)

## Routes
GET /             => Homepage
GET /monsters     => Display a list of monsters
GET /monsters/:id => Display a single monster
GET /senses       => Display a list of monster senses
GET /senses/:id   => Display a single monster sense
GET /actions       => Display a list of monster actions
GET /actions/:id   => Display a single monster action
GET /images       => Display a list of monster image
GET /images/:id   => Display a single monster image
GET /pages/:permalink  => Displays pages
GET /search_all       => Display a search results page

## Controllers
HomeController => index
MonstersController => index, show
SensesController => index, show
ActionsController => index, show
MonsterActionsController => index, show
MonsterSensesController => index, show
MonsterImagesController => index, show
PagesController
SearchController

## Exporting my Database
1) Using csv files.
  - Creation of ruby data extraction into csv (monsters_export.rb) or through outside use (export into excel)
2) Using SQL Server
  - Dumping the database into an sql file
  (sqlite3 storage/development.sqlite3 .dump > database_dump.sql)
  - Importing the .sql file into SQL Server (SSMS)
  - Edit the .sql file
    - Remove: PRAGMA foreign_keys=OFF;
    - Replace AUTOINCREMENT with IDENTITY(1,1)