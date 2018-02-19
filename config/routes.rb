Rails.application.routes.draw do
  get 'articles/index'
  post 'articles/index'
  root controller: :articles, action: :index
  root controller: :articles, action: :createArticle
end
