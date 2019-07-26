Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    match '/comments' => 'comments#create', as: :comments_create, via: [:post]
  end
  resources :comments
  resources :users
  resources :categories

end
