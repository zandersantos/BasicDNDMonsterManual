class RemoveDescriptionFromActions < ActiveRecord::Migration[8.0]
  def change
    remove_column :actions, :description, :string
  end
end
