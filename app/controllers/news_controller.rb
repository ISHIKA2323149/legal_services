class NewsController < ApplicationController
  before_action :find_news, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource param_method: :set_params

  def index
    @news = News.all
  end

  def new
    @news = current_user.news.build
  end

  def create
    @news = current_user.news.build(set_params)

    if @news.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @news.update(set_params)
      redirect_to @news
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @news.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_params
    params.require(:news).permit(:title, :body)
  end

  def find_news
    @news = News.find(params[:id])
  end
end
