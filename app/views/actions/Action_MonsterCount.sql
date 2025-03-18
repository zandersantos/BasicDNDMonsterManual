-- SQLite
--we want to order the monster_actions by the number of monsters that have them

SELECT actions.name, COUNT(monster_actions.monster_id) AS monster_count
FROM monster_actions
  LEFT OUTER JOIN actions ON monster_actions.action_id = actions.id
GROUP BY monster_actions.action_id
ORDER BY monster_count DESC;