class Agent < ApplicationRecord
  belongs_to :encounter, optional: true
  has_and_belongs_to_many :clusters
end
