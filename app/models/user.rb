class User < ApplicationRecord
  has_secure_password


  has_many :received_gifts, class_name: "Gift", foreign_key: "receiver_id"
  has_many :given_gifts, class_name: "Gift", foreign_key: "giver_id"
  has_many :received_gift_lists, through: :received_gifts, source: "gift_list"
  has_many :given_gift_lists, through: :given_gifts, source: "gift_list"

  validates :name, presence: true
  validates :username, uniqueness: true
  validates :password, length: { in: 8..20 }
  validates :email, uniqueness: true

  def all_gift_lists
    (given_gift_lists + received_gift_lists).uniq 
  end
end
