class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def createArticle
    post '/article/:article' do
      Article.create(article: params[:title, :content])
    end
  end
end
