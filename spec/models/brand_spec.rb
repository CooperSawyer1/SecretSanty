require "spec_helper"
require "rails_helper"

RSpec.describe Brand, type: :model do
  describe "associations" do
    it { should have_many(:gifts) }
    it { should have_many(:users).through(:gifts) }
  
  end
end