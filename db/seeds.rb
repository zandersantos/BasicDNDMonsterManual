require "csv"

filename = Rails.root.join "db/monsters.csv"
puts "Reading in the file from here #{filename}"

csv_data = File.read(filename)
monsters = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

monsters.each do |monster|


    # Create monster record with armor_class value
  monster_record = Monster.create(name: monster["name"])


  if monster.valid?
    puts "Yippee"
  else
    puts "Unable to create the monster name #{monster["name"]}"
    puts monster.errors
  end
end

puts "Created #{Monster.count} Names"