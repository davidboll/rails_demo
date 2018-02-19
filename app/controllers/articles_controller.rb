class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def create
    post '/article/:article' do
      Article.create(article: params[:title, :content])
    end
  end
end
