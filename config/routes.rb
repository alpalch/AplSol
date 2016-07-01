Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts



  devise_scope :user do
    root 'devise/sessions#new'
    post 'logout', to: 'devise/sessions#destroy'
  end
end
