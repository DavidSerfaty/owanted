Rails.application.routes.draw do

  root 'static_pages#homepage'
  get 'services', to: 'static_pages#all_services'
  resources "contacts", only: [:new, :create]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:index, :show]

end
