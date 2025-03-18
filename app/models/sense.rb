class Sense < ApplicationRecord
  has_many :monster_senses
  has_many :monsters, through: :monster_senses

  validates :sense_type, presence: true, uniqueness: true
end
