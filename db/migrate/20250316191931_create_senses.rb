class CreateSenses < ActiveRecord::Migration[8.0]
  def change
    create_table :senses do |t|
      t.string :sense_type

      t.timestamps
    end
  end
end
