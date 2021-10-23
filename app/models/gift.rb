class Gift < ApplicationRecord
  belongs_to :user
  validates :name, :price, presence: true
  validates :website, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]) }
  # belongs_to :giver, class_name: "User", foreign_key: "giver_id", optional: true
end
