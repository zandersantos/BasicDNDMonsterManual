class CreateActions < ActiveRecord::Migration[8.0]
  def change
    create_table :actions do |t|
      t.string :name
      t.string :description
      t.string :damage_type
      t.string :damage_dice

      t.timestamps
    end
  end
end
