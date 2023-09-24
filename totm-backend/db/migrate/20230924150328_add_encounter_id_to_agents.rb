class AddEncounterIdToAgents < ActiveRecord::Migration[7.0]
  def change
    add_column :agents, :encounter_id, :integer
  end
end
