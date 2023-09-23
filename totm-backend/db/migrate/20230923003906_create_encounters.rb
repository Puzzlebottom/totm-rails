class CreateEncounters < ActiveRecord::Migration[7.0]
  def change
    create_table :encounters do |t|
      t.string :name
      t.integer :round
      t.integer :turn

      t.timestamps
    end
  end
end
