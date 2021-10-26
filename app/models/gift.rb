class Gift < ApplicationRecord
  belongs_to :user
  belongs_to :brand

  validates :name, :price, :website, :brand, presence: true
  validates :website, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]) }
  # belongs_to :giver, class_name: "User", foreign_key: "giver_id", optional: true
  # scope :find_current_user, -> { where(user_id: current_user&.id) }
end

