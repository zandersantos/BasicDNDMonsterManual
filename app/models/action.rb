class Action < ApplicationRecord
  has_many :monster_actions
  has_many :monsters, through: :monster_actions

  validates :name, presence: true, uniqueness: true

  def self.order_by_monster_count
    #SELECT actions.name, COUNT(monster_actions.monster_id) AS monster_count
      #FROM monster_actions
       # LEFT OUTER JOIN actions ON monster_actions.action_id = actions.id
      #GROUP BY monster_actions.action_id
      #ORDER BY monster_count DESC;

      self.select("actions.id")
          .select("actions.name")
          .select("COUNT(monster_actions.monster_id) AS monster_count")
          .left_joins(:monster_actions)
          .group("actions.id")
          .order("monster_count DESC")

  end
end
