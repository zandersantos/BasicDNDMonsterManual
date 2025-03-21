class Sense < ApplicationRecord
  has_many :monster_senses
  has_many :monsters, through: :monster_senses

  validates :sense_type, presence: true, uniqueness: true
  def self.order_by_monster_count
    #SELECT actions.name, COUNT(monster_actions.monster_id) AS monster_count
      #FROM monster_actions
       # LEFT OUTER JOIN actions ON monster_actions.action_id = actions.id
      #GROUP BY monster_actions.action_id
      #ORDER BY monster_count DESC;

      self.select("senses.id")
          .select("senses.sense_type")
          .select("COUNT(monster_senses.monster_id) AS monster_count")
          .left_joins(:monster_senses)
          .group("senses.id")
          .order("monster_count DESC")

  end

end
