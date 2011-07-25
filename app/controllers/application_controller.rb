class ApplicationController < ActionController::Base
  protect_from_forgery
  USER_NAME, PASSWORD = "admin", "password"

  helper_method :admin?

  protected
  def authorize
    unless admin?
      flash[:error] = "Unauthorized access"
      redirect_to food_outlets_path
    false
    end
  end

  def admin?
    session[:user_name] == USER_NAME
    session[:password] == PASSWORD
  end

end