class AsciisController < ApplicationController
  def new
    render 'new'
  end

  def create
    @text = params[:ascii][:user_text]

    the_ascifier = Artii::Base.new(:font => 'alligator')

    @ascified = the_ascifier.asciify(@text)

    render 'results'
  end
end
