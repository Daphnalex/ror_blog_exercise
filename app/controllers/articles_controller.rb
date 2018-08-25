class ArticlesController < ApplicationController

  before_action :get_all_articles

  def index
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end
  def create

    @article = Article.new
    @article.title = params[:article][:title]
    @article.image = params[:article][:image]
    @article.resume = params[:article][:resume]
    @article.content = params[:article][:content]
    @article.save
    redirect_to root_path
  end
  def get_all_articles
    @articles = Article.all
  end

end
