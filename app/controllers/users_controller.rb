class UsersController < ApplicationController
  skip_before_action :require_login, only:[:new, :create]

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
    @user = User.new(username:params[:user][:username])
    @user.password = params[:user][:password]
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :username, :email, :password, :secret_santa_id)
    end
end
