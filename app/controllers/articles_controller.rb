class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def create
     @article  = Article.new(title: params[:title], content: params[:content])
  end
end
