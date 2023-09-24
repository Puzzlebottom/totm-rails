class Cluster < ApplicationRecord
  belongs_to :encounter, optional: true
  has_many :agents, through: :agents_clusters

  validates :name, presence: true
  validates :encounter_id, presence: true
end
