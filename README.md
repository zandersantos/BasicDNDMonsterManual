# README
This Project will be used for the Introduction Project in the Fullstack Web Development Course in the Business Information Technology program at Red River College.

This Project will be later refined, extended, and become a part of a larger project.

Author: Zander Santos
Dungeons and Dragons Monster Manual
  -A user is able to search a monster and see the monsters abilities, actions, senses, and associated images.

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