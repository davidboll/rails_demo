Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show'
  root controller: :articles, action: :index
  root controller: :articles, action: :show
  #root controller: :articles, action: :createArticle
end
