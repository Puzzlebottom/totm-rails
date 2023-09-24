class AddDescriptionToEncounters < ActiveRecord::Migration[7.0]
  def change
    add_column :encounters, :description, :string
  end
end
