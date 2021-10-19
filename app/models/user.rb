class User < ApplicationRecord
  has_secure_password

  has_many :gifts
  has_many :gift_lists, through: :gifts
end
