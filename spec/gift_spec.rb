require "spec_helper"
require "rails_helper"

RSpec.describe Gift, type: :model do
  describe "associations" do
    it { should belong_to(:user).class_name("User") }
    it { should belong_to(:brand).class_name("Brand") }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:website) }
    it { should validate_presence_of(:brand) }

  end
end
