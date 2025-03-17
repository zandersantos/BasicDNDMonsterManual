class MonsterImage < ApplicationRecord
  validates :url, uniqueness: true

  belongs_to :monster
end
