class NewsController < ApplicationController
  before_action :find_params ,only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource param_method: :set_params  
  def index
    @news = News.all
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(set_params)
    @news.user_id = current_user.id
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

  def find_params
    @news  = News.find(params[:id])
  end
  
end
