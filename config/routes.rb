Rails.application.routes.draw do

  resources :articles, only: [:index, :show, :new, :create, :destroy]
  resources :keywords, only: [:index, :show, :new, :create, :destroy]
  resources :actions, only: [] do
    member do
      post :like
      post :dislike
    end
  end

  root to: 'articles#index'
end
