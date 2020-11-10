Rails.application.routes.draw do
  root 'static_pages#uikit'
  get 'static_pages/navbar'
  get 'static_pages/form'
  get 'static_pages/footer'
  get 'static_pages/banner'
  get 'static_pages/form_sign_in'
  get 'static_pages/cart'


end
