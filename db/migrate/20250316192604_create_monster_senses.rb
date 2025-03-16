class CreateMonsterSenses < ActiveRecord::Migration[8.0]
  def change
    create_table :monster_senses do |t|
      t.string :sense_range
      t.references :monster, null: false, foreign_key: true
      t.references :sense, null: false, foreign_key: true

      t.timestamps
    end
  end
end
