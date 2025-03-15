class Monster < ApplicationRecord
  has_many :monster_ability
  has_many :monster_action
  has_many :monster_image
  has_many :monster_sense

  validates :name, presence: true, uniqueness: true
  validates :armour_class, presence: true, numericallity: { only_integer: true }
  validates :hitpoints, presence: true, numericallity: { only_integer: true }
  validates :speed, presence: true, numericallity: { only_integer: true }
end
