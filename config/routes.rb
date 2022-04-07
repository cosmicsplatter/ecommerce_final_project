Rails.application.routes.draw do
  devise_for :installs
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "products#index"

  resources :products
  resources :options
  resources :categories
end
