class User < ApplicationRecord
  has_secure_password

  has_many :encounters, dependent: :destroy

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(username, password)
    user = User.find_by_username(username)
    return unless user&.authenticate(password)

    user
  end
end
