class UsersGiftList < ApplicationRecord
  belongs_to :user
  belongs_to :gift_list
  
end
