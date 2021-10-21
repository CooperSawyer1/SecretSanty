class Gift < ApplicationRecord
  belongs_to :user
  # belongs_to :giver, class_name: "User", foreign_key: "giver_id", optional: true
end
