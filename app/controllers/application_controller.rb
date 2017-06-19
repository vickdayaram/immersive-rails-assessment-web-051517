class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :is_user?

  def is_user?
    !!session[:user_id]
  end

  def logged_in?
    redirect_to '/' unless is_user?
  end

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
