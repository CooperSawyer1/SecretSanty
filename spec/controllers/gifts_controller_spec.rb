require "rails_helper"

# RSpec.describe GiftsController, type: :controller do
#   describe "Get #show" do
#     it "returns a successful gift" do
      
#       get :show
#       expect(response).to 
#     end
#   end
# end

# RSpec.describe GiftsController, type: :controller do 
#   it do
#     user = User.create!(name: "thomas", username: "thoams1", email: "thomas12@gmail.com", password: "password1", secret_santa_id: 1)

#     should_not permit(:birthday) 
#       .for(:create, params: { user_id: user.id }) 
#       .on(:gift)
#   end

#   # describe "redirecting it to a gifts path"
    
# # end



# RSpec.describe GiftsController, type: :controller do
#   describe " it creates a new gift" do

#   login_user 
#     params = {
#       gift: {
#         name: "foo",
#         price: 123,
#         user_id: user.id,
#         website: "foo",
#         giver_id: user.id,
#         brand_id: brand.id
#       },
#       user_id: user.id
#     }
#     should permit(:name, :price, :user_id, :website, :giver_id, :brand_id)
#       .for(:create, params: params)
#       .on(:gift)
#     end

#   end
