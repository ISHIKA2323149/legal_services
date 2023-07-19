class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def new
    @news = News.new
  end

  def show
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(set_params)
    if @news.save
      redirect_to root_path
    else
      render :new , status: :unprocessable_entity
    end
  end

  private

  def set_params
    params.require(:news).permit(:title, :body)
  end
end
