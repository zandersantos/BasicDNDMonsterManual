class CreateMonsterImages < ActiveRecord::Migration[8.0]
  def change
    create_table :monster_images do |t|
      t.string :url
      t.references :monster, null: false, foreign_key: true

      t.timestamps
    end
  end
end
