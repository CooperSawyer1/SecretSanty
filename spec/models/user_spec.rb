require "rails_helper"
require "spec_helper"

RSpec.describe User, type: :model do
  describe "associations" do
    it { should have_many(:gifts) }
    it { should have_many(:brands).through(:gifts) }
    it { should have_secure_password }
  end

  describe "schema " do 
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:username).of_type(:string) }
    it { is_expected.to have_db_column(:email).of_type(:string) }
    it { is_expected.to have_db_column(:password_digest).of_type(:string) }
    it { is_expected.to have_db_column(:secret_santa_id).of_type(:integer) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_length_of(:password), "in: 8..20" }
  end
end
