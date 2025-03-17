class RemoveDamageTypeFromActions < ActiveRecord::Migration[8.0]
  def change
    remove_column :actions, :damage_type, :string
  end
end
