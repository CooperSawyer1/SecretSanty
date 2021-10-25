class Brand < ApplicationRecord
  has_many :users, through: :gifts
  has_many :gifts
end
