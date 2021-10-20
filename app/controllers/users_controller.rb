class UsersController < ApplicationController
  skip_before_action :set_current_user, only: [:new, :create]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @gift_lists = GiftList.find(params[:id])
    @gift = Gift.find(params[:id])
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
      flash[:error] = "Please try to create an account again"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :giver_id, :receiver_id)
  end
end
