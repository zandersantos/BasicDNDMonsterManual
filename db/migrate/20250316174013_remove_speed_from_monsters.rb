class RemoveSpeedFromMonsters < ActiveRecord::Migration[8.0]
  def change
    remove_column :monsters, :speed, :string
  end
end
