class SessionsController < ApplicationController
  def new
  end

  def create
    session[:user_name] = params[:user_name]
    session[:password] = params[:password]
    redirect_to food_outlets_path, :notice => "Successfully logged in"
  end

  def destroy
    reset_session
    redirect_to food_outlets_path, :notice => "Successfully logged out"
  end

end
