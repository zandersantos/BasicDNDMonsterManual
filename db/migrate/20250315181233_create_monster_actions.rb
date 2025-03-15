class CreateMonsterActions < ActiveRecord::Migration[8.0]
  def change
    create_table :monster_actions do |t|
      t.references :monster, null: false, foreign_key: true
      t.references :action, null: false, foreign_key: true

      t.timestamps
    end
  end
end
