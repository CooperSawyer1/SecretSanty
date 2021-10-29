require "rails_helper"

describe "a user can log in to the app", type: :system do 
  it "they can sign in" do 
    
    user = create_user

    visit login_path

    fill_in "Email", with: "SantaClaus@gmail.com"
    fill_in "Password", with: "password1"

    click_button "Login"

    expect(current_path).to eq user_path(user)
    
  end

  it "they cannot sign in" do

    create_user

    visit login_path

    fill_in "Email", with: "SantaClaus@gmail.com"
    fill_in "Password", with: "notpass"

    click_button "Login"

    expect(current_path).to eq login_path
  end

  it "they are not a current user so they must sign in" do

    visit login_path

    click_on "here"

    expect(current_path).to eq new_user_path

  end

  def create_user
    User.create!(name: "santa claus", username:"Santa", email: "SantaClaus@gmail.com", password: "password1", secret_santa_id: 1)
  end
end

