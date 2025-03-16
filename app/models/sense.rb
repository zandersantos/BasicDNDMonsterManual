class Sense < ApplicationRecord
  has_many :monster_sense

  validates :sense_type, presence: true, uniqueness: true
end
