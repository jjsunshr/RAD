class Customer < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 8, maximam: 20}

  before_save { self.email = email.downcase }
  has_secure_password
end
