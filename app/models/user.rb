class User < ApplicationRecord
  has_secure_password

  # associations
  has_many :posts

  # validations
  validates :email, uniqueness: true, format: URI::MailTo::EMAIL_REGEXP
  validates :password, length: { minimum: 5 }

  # scopes

  # callbacks

  def name
    email.to_s.split("@").first
  end
end
