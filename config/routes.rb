Rails.application.routes.draw do
  resources :twts
  resources :logins
  resources :headers
  resources :accounts
  resources :welcomes
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

   root "accounts#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
