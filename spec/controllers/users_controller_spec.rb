require "rails_helper"

RSpec.describe UsersController, type: :controller do
  it do
    params = {
      user: {
        name: 'John',
        username: 'Doe',
        email: 'johndoe@example.com',
        password: 'password',
        secret_santa_id: 1
      }
    }
    should permit(:name, :username, :email, :password, :secret_santa_id).
      for(:create, params: params).
      on(:user)
  end
end
