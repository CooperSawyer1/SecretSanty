class ApplicationController < ActionController::Base

  helper_method :current_user
  helper_method :logged_in? 
  before_action :require_user


  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    session[:user_id]
  end
  
  def require_user
    redirect_to "/login" unless current_user
  end
end

