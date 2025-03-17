class AddDescriptionToMonsterActions < ActiveRecord::Migration[8.0]
  def change
    add_column :monster_actions, :description, :string
  end
end
