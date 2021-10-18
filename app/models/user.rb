class User < ApplicationRecord

  has_many :gifts
  has_many :gift_lists, through: :gifts
  has_secure_password
  
end
