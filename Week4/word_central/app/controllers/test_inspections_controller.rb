class TestInspectionsController < ApplicationController
  def new
    render 'new'
  end

  def create
    @text = params[:text_inspection][:user_text]

    @word_count = @text.split(" ").length

    @frequencies = WordTool.count_words(@text.split(" "))

    @reading_time = (@word_count.to_f/275).round(2)

    render "results"
  end
end

