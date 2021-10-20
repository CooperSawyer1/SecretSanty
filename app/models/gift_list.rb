class GiftList < ApplicationRecord
  has_many :gifts
  has_many :receivers, through: :gifts
  has_many :givers, through: :gifts
end
