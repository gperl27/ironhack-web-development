class SessionsController < ApplicationController
  before_action :user_setup, only: [:new]
  before_action :redirect_if_already_logged_in, only: [:new]

  def new
    #login form
    #redirect_if_already_logged_in
  end

  def create 
    #create a session
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    #delete session
    session.clear
    redirect_to '/'
  end
end
