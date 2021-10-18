class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    find_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Secret Santy"
      redirect_to @user
    else
      render :new
    end
  end

  private 

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
