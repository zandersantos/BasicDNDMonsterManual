require 'csv'
require_relative 'config/environment'

CSV.open("monsters.csv", "wb") do |csv|
  csv << Monster.column_names
  Monster.all.each do |monster|
    csv << monster.attributes.values
  end
end

puts "Exported monsters.csv"