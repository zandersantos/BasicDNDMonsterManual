require "csv"

Monster.delete_all

filename = Rails.root.join "db/monstersdatafile.csv"
puts "Reading in the file from here #{filename}"

csv_data = File.read(filename)
monsters = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

monsters.each do |monster|


    # Create monster record with armor_class value
  monster_record = Monster.create(name: monster["name"], armour_class: monster["armor_class"], hitpoints: monster["hit_points"], hit_dice: monster["hit_dice"], img_url: monster["image_url"])


  if monster_record.valid?
    puts "#{monster["name"]} Created"
  else
    puts "Unable to create the monster name #{monster["name"]}"
    puts "Errors: #{monster_record.errors.full_messages.join(", ")}"
  end
end

puts "Created #{Monster.count} Names"