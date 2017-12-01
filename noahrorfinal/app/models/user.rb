class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true, numericality: true
  validates :username, presence: true, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 8 }
  has_secure_password
end
