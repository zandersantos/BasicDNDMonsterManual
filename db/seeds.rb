require "csv"

#MONSTER CREATION

# MonsterSense.delete_all
# Monster.delete_all
# Sense.delete_all

# filenamemonster = Rails.root.join "db/monstersdatafile.csv"
# puts "Reading in the file from here #{filenamemonster}"

# csv_data = File.read(filenamemonster)
# monsters = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

# monsters.each do |monster|

#   # Create monster record with armor_class value
#   monster_record = Monster.create(name: monster["name"], armour_class: monster["armor_class"], hitpoints: monster["hit_points"], hit_dice: monster["hit_dice"], img_url: monster["image_url"])

#   if monster_record.valid?
#     puts "#{monster["name"]} Created"
#   else
#     puts "Unable to create the monster name #{monster["name"]}"
#     puts "Errors: #{monster_record.errors.full_messages.join(", ")}"
#   end
# end

# puts "Created #{Monster.count} Names"


#SENSES CREATION
# filenamesense= Rails.root.join "db/sensedata.csv"
# puts "Reading in the file from here #{filenamesense}"

# csv_data = File.read(filenamesense)
# senses = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

# senses.each do |sense|

#   # Create monster record with armor_class value
#   sense_record = Sense.create(sense_type: sense["sense_type"])

#   if sense_record.valid?
#     puts "#{sense["sense_type"]} Created"
#   else
#     puts "Unable to create the sense type #{sense["sense_type"]}"
#     puts "Errors: #{sense_record.errors.full_messages.join(", ")}"
#   end
# end

# puts "Created #{Sense.count} Senses"


#MONSTER SENSE CREATION
# filenamemonstersense= Rails.root.join "db/monstersensedatafile.csv"
# puts "Reading in the file from here #{filenamemonstersense}"

# csv_data = File.read(filenamemonstersense)
# monstersenses = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

# monstersenses.each do |monstersense|

#    # Create monster record with armor_class value
#   monstersense_record = MonsterSense.create(monster_id: monstersense["monster_id"], sense_id: monstersense["sense_type"], sense_range: monstersense["sense_range"])

#   if monstersense_record.valid?
#     puts "#{monstersense["sense_range"]} Created"
#   else
#     puts "Unable to create the sense type #{monstersense["sense_range"]}"
#     puts "Errors: #{monstersense_record.errors.full_messages.join(", ")}"
#   end
# end

# puts "Created #{MonsterSense.count} MonsterSenses"


#ACTION CREATION
filenameaction= Rails.root.join "db/actiondata.csv"
puts "Reading in the file from here #{filenameaction}"

csv_data = File.read(filenameaction)
actions = CSV.parse(csv_data, headers: true, encoding: 'utf-8')
puts "Headers: #{actions.headers.inspect}" # Check the headers
actions.each_with_index do |action, index|
  puts "Row #{index + 1}: #{action.to_h.inspect}" # Check each row
end


actions.each do |action|

  # Create monster record with armor_class value
  action_record = Action.create(name: action["name"])

  if action_record.valid?
    puts "#{action["name"]} Created"
  else
    puts "Unable to create the action #{action["name"]}"
    puts "Errors: #{action_record.errors.full_messages.join(", ")}"
  end
end

puts "Created #{Action.count} actions"
