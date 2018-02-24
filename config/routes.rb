Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles, except: [:destroy] do
    resources :comments, only: [:create]
  end

end
