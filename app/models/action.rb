class Action < ApplicationRecord
  has_many :monster_action

  validates :name, presence: true, uniqueness: true
end
