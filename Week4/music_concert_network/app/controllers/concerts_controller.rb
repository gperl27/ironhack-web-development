class ConcertsController < ApplicationController
  def index
    @concerts_today = Concert.where("date < ?", Time.now.end_of_day)
    @concerts_later = Concert.where("date > ?", Time.now.end_of_day)
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(concert_params)
    if @concert.save
      redirect_to concerts_path
    else
      render 'new'
    end
  end

  def show
    @concert = Concert.find(params[:id])
    @comments = @concert.comments
  end

  def search
    @price = params[:search].to_d
    @concerts = Concert.where("price <= ?", @price)
  end

  def popular
    @concerts = Comment.group("concert").order("count_all DESC").count
  end

  private
  def concert_params
    params.require(:concert).permit(:artist, :price, :venue, :date, :city, :description)
  end

end
