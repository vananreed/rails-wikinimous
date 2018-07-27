class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(user_params)
    @article.save
    redirect_to root_path
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def show
  end

  def update
    @article.update(user_params)
    @article.save
    redirect_to root_path
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
  def user_params
    params.require(:article).permit(:title, :content)
  end
end
