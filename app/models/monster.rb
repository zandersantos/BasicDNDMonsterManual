class Monster < ApplicationRecord
  has_many :monster_ability
  has_many :monster_actions
  has_many :actions, through: :monster_actions
  has_many :monster_senses
  has_many :senses, through: :monster_senses

  has_one :monster_image

  validates :name, presence: true, uniqueness: true
  validates :armour_class, presence: true, numericality: { only_integer: true }
  validates :hitpoints, presence: true
end
