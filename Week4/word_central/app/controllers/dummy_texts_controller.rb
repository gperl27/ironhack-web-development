class DummyTextsController < ApplicationController
  def new
    render 'new'
  end

  def create
    @user_number = params[:dummy][:user_text]
    @user_choice = params[:dummy][:user_type]

    render 'results'
  end
end
