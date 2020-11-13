Rails.application.routes.draw do

  root 'static_pages#homepage'

  devise_for :users
  resources :users, only: [:show, :edit, :update]
  
  get 'services', to: 'static_pages#all_services'
  resources "contacts", only: [:new, :create]


end
