Rails.application.routes.draw do

  resources :topics do
    resources :posts
  end

  # below is the conventional way of craeting the routes
  # resources :topics, only: [] do
  #   resources :comments, only: [:create]
  # end

  # resources :posts, only: []
  #   resources :comments, only: [:create]
  # end

  resources :topics, only: [] do
    resources :comments, module: :topics, only: [:create, :destroy]
  end

  resources :posts, only: [] do
    resources :comments, module: :posts, only: [:create, :destroy]
  end

  get 'about' =>'welcome#about'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
