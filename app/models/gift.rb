class Gift < ApplicationRecord
  belongs_to :user
  belongs_to :brand

  validates :name, :price, :website, :brand, presence: true
  validates :website, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]) }
  # belongs_to :giver, class_name: "User", foreign_key: "giver_id", optional: true
  # scope :for_user, ->(user) { where(user_id: user.id) }

  def self.for_user(user)
    where(user_id: user.id)
  end
end
