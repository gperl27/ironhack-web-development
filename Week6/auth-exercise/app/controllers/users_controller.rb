class UsersController < ApplicationController
  before_action :user_setup, only: [:home, :new, :index, :show]
  before_action :redirect_if_already_logged_in, only: [:new]
  before_action :redirect_if_not_logged_in, only: [:show]
  before_action :redirect_if_not_admin, only: [:index]
  # renders the home page
  def home
    #@name = current_user ? @current_user.username : "Ironhacker"
  end

  def index
    @users = User.all
  end

  # renders the signup form
  def new
    #redirect_if_already_logged_in
  end

  def show
    #redirect_if_not_logged_in
  end

  # receives form and creates a user from that data
  def create
    user = User.new(user_params)
    if user.save
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end   

  private

  def user_params
     params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
