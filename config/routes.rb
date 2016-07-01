Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts

  root 'posts#index'

  devise_scope :user do
    post 'logout', to: 'devise/sessions#destroy'
  end
end
