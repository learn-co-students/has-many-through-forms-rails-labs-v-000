Rails.application.routes.draw do
  root 'posts#new'
  resources :posts
  resources :comments
  resources :users
  resources :categories

end
