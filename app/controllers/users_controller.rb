class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:error] = "Please try to create and account again"
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end
end
