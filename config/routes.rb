Rails.application.routes.draw do
  root 'receivers#index'

  devise_for :users

  resources :visitors, only: [:index, :new, :show, :create]
  resources :referrers, only: [:new, :show, :create]
end
