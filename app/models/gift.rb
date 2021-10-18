class Gift < ApplicationRecord

  belongs_to :gift_list
  belongs_to :user
end
