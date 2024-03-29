Rails.application.routes.draw do
  resources :binds do
    resources :feedbacks
  end
  resources :con_actions
  resources :tags
  root 'receivers#index'

  devise_for :users

  resources :visitors, only: [:index, :new, :show, :create] do
    resources :detail_visitors
  end
  resources :referrers, only: [:new, :show, :create]
  resources :segments
end
