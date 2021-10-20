class GiftList < ApplicationRecord
  has_many :gifts
  has_many :receivers, through: :gifts
  has_many :givers, through: :gifts
  has_many :users, through: :users_gift_list
end
