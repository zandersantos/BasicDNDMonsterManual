require "csv"

#Monster Create



Monster.delete_all
Sense.delete_all
Monster_Sense.delete_all

filenamemonster = Rails.root.join "db/monstersdatafile.csv"
puts "Reading in the file from here #{filenamemonster}"

csv_data = File.read(filenamemonster)
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


filenamesense= Rails.root.join "db/sensedata.csv"
puts "Reading in the file from here #{filenamesense}"

csv_data = File.read(filenamesense)
senses = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

senses.each do |sense|


    # Create monster record with armor_class value
  sense_record = Sense.create(sense_type: sense["sense_type"])


  if sense_record.valid?
    puts "#{sense["sense_type"]} Created"
  else
    puts "Unable to create the sense type #{sense["sense_type"]}"
    puts "Errors: #{sense_record.errors.full_messages.join(", ")}"
  end
end

puts "Created #{Sense.count} Names"
