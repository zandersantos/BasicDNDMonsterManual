class Ability < ApplicationRecord
  has_many :monster_ability

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
end
