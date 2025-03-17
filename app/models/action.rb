class Action < ApplicationRecord
  has_many :monster_actions

  validates :name, presence: true, uniqueness: true
end
