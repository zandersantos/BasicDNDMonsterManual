class Monster < ApplicationRecord
  has_many :monster_ability
  has_many :monster_action
  has_one :monster_image

  validates :name, presence: true, uniqueness: true
  validates :armour_class, presence: true, numericality: { only_integer: true }
  validates :hitpoints, presence: true
end
