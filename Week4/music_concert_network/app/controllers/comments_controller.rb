class CommentsController < ApplicationController
  def new
    @concert = Concert.find(params[:concert_id])
    @comment = @concert.comments.new
  end

  def create
    @concert = Concert.find(params[:concert_id])
    
    @comment = @concert.comments.new(comment_params)
    if @comment.save
      redirect_to concert_path(@concert)
    else
      render 'new'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:description)
  end
end
