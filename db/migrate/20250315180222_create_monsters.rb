class CreateMonsters < ActiveRecord::Migration[8.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :armour_class
      t.string :hitpoints
      t.integer :speed
      t.string :hit_dice
      t.string :img_url

      t.timestamps
    end
  end
end
