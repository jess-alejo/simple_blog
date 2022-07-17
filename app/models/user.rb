class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true, format: URI::MailTo::EMAIL_REGEXP
  validates :password, length: { minimum: 5 }

  def name
    email.to_s.split("@").first
  end
end
