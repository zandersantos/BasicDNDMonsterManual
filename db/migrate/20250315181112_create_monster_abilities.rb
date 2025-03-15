class CreateMonsterAbilities < ActiveRecord::Migration[8.0]
  def change
    create_table :monster_abilities do |t|
      t.references :monster, null: false, foreign_key: true
      t.references :ability, null: false, foreign_key: true

      t.timestamps
    end
  end
end
