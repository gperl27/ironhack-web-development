class UsersController < ApplicationController
  def index
    @users = User.order("name ASC")
  end

  def show
    @user = User.find(params[:user_id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(
        name: params[:user][:name],
        email: params[:user][:email]
      )

    user.save

    redirect_to "/users"
  end

  def destroy
    user = User.find(params[:user_id])
    user.destroy

    redirect_to users_path
  end
end
