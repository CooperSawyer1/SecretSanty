require "rails_helper"

describe "A new user visits the website", type: :system do
  it "they can create an account" do

    visit new_user_path

    fill_in "Name", with: "Santa Claus2"
    fill_in "Username", with: "Santa32"
    fill_in "Email", with: "SantaClaus123@gmail.com"
    fill_in "Password", with: "password1"


    expect { click_button "Create User" }.to change(User.all, :count).by(1)

    expect(current_path).to eq user_path(User.last)
  end
  it "they can't create an account without passing validations", :aggregate_failures do
    visit new_user_path

    expect { click_button "Create User" }.to change(User.all, :count).by(0)

    expect(page).to have_content "Password is too short (minimum is 8 characters)"
    expect(page).to have_content "Password can't be blank"
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Email can't be blank"
    expect(current_path).to eq users_path
  end
end
