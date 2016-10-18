class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  #the current user method helps to find out if the user is logged in or logged out
  #It does this by checking whether there's a user in the database with a given session id
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end
end
