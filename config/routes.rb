Rails.application.routes.draw do
  root 'chat#index'

  devise_for :users

  resources :visitors
end
