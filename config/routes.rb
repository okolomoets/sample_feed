Rails.application.routes.draw do

  resources :articles, only: [:index, :show, :new, :create, :destroy]
  resources :keywords, only: [:index, :show, :new, :create, :destroy]

  root to: 'articles#index'
end
