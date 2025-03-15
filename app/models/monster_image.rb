class MonsterImage < ApplicationRecord
  validates :url, presence: true, uniqueness: true

  belongs_to :monster
end
