class AddDamageTypeToMonsterActions < ActiveRecord::Migration[8.0]
  def change
    add_column :monster_actions, :damage_type, :string
  end
end
