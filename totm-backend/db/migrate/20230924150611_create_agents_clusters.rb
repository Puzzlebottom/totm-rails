class CreateAgentsClusters < ActiveRecord::Migration[7.0]
  def change
    create_table :agents_clusters, id: false do |t|
      t.belongs_to :agent
      t.belongs_to :cluster
      t.timestamps
    end
  end
end
