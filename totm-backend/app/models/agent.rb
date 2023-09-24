class Agent < ApplicationRecord
  belongs_to :encounter, optional: true
  has_many :clusters, :through => :agents_clusters

  validates :name, presence: true
  validates :initiative, presence: true
  validates :encounter_id, presence: true

  def self.add_cluster(cluster_id)
end
