class AddUserIdToEncounters < ActiveRecord::Migration[7.0]
  def change
    add_column :encounters, :user_id, :integer
  end
end
