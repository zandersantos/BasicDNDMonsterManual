class RemoveDamageDiceFromActions < ActiveRecord::Migration[8.0]
  def change
    remove_column :actions, :damage_dice, :string
  end
end
