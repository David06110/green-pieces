class BookingsController < ApplicationController
  def new
  end

  def show
  end

  def index
  end
  
  private

  def article_params
    params.require(:article).permit(:title, :body, :photo)
  end
end
