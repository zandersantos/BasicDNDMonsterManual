class CreateAbilities < ActiveRecord::Migration[8.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.string :description
      t.string :string

      t.timestamps
    end
  end
end
