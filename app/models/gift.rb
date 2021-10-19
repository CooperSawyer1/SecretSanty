class Gift < ApplicationRecord
  belongs_to :giver, foreign_key: :giver_id, class_name: "user"
  belongs_to :receiver, foreign_key: :receiver_id, class_name: "user"
  belongs_to :gift_list
end