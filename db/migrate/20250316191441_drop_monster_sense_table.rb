class DropMonsterSenseTable < ActiveRecord::Migration[8.0]
  def change
    drop_table :monster_senses
  end
end
