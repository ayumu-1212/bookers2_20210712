Rails.application.routes.draw do
  get 'home/about' => "homes#about"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :books
  post "favorites/:user_id/:book_id" => "favorites#create", as: "favorites_create"
  delete "favorites/:user_id/:book_id" => "favorites#destroy", as: "favorites_destroy"
  root to: "homes#top"
end
