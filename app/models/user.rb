class User < ApplicationRecord
  has_secure_password

  has_many :gifts

  validates :name, presence: true
  validates :username, uniqueness: true
  validates :password, length: { in: 8..20 }
  validates :email, uniqueness: true

end
