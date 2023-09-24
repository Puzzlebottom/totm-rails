class Encounter < ApplicationRecord
  belongs_to :user
  has_many :agents, dependent: :destroy
  has_many :clusters, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
end
