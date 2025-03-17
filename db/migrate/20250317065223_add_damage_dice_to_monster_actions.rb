class AddDamageDiceToMonsterActions < ActiveRecord::Migration[8.0]
  def change
    add_column :monster_actions, :damage_dice, :string
  end
end
