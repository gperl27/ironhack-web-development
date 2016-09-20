class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #helper_method :current_user

  protected

  def user_setup
    @current_user = User.find_by(id: session[:user_id])

    if @current_user
      @name = @current_user.username
    else
      @name = "Ironhack"
    end
  end

  def redirect_if_not_logged_in
    if @current_user == nil
      flash[:message] = "You need to login to visit that page."
      redirect_to "/login"
    end
  end

  def redirect_if_already_logged_in
    if @current_user
      flash[:message] = "You are already logged in"
      redirect_to "/"
    end
  end

  def redirect_if_not_admin
    if !@current_user || @current_user.role != "admin"
      flash[:message] = "You don't have permission to see this page."
      redirect_to "/"
    end
  end
end
