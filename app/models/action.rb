class Action < ApplicationRecord
  has_many :monster_action

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
end
