Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end
  ActiveAdmin.routes(self)
  get "home/about"
  root "home#index"

  post "home/add_to_cart/:id", to: "home#add_to_cart", as: "add_to_cart"
  delete "/home/remove_from_cart/:id", to: "home#remove_from_cart", as: "remove_from_cart"

  resources :beers
  resources :breweries
  resources :categories
end
