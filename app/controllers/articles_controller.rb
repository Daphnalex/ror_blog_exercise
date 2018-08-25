class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @articles = Article.all
    @article = Article.find(params[:id])
  end
  def create
    @articles = Article.all
  end
end
