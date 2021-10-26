require "rails_helper"
require "spec_helper"

RSpec.describe User, type: :model do
  describe "associations" do
    it { should have_many(:gifts) }
    it { should have_many(:brands) }
    it { should have_secure_password }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    
  end
end


