require "rails_helper"

describe "when a user visits their profile page", type: :system do 
  it "they can see a list of their gifts " do

    user = create_user
    brand = create_brand
    gift = create_gift

    page.set_rack_session(user_id: user.id)
    visit user_path(user)

    expect(page).to have_content user.name
    expect(page).to have_link { user.gifts.name }, href: user_gifts_path(user)
  end

  def create_user
    User.create!(
      name: "Miss Clause",
      username: "MissClause1",
      email: "missClause1@gmail.com",
      password: "password3",
      secret_santa_id: 4
    )
  end

  def create_gift
    Gift.create!(
      name: "Chess",
      price: 12.00,
      user_id: 1,
      website: "https://www.giggle.com",
      giver_id: 1,
      brand_id: 1
    )
  end

  def create_brand
    Brand.create!(
      name: "Nike"
    )
  end
end