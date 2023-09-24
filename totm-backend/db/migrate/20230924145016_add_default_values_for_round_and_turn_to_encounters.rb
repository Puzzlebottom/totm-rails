class AddDefaultValuesForRoundAndTurnToEncounters < ActiveRecord::Migration[7.0]
  def change
    change_column_default :encounters, :round, from: nil, to: 0
    change_column_default :encounters, :turn, from: nil, to: 0
  end
end
