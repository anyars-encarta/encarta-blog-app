# routes.rb
Rails.application.routes.draw do
  root 'users#index'

  get 'likes/new'
  post 'likes/create'
  get 'comments/new'
  post 'comments/create'
  
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show] do
      resources :comments, only: [:new, :create]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end