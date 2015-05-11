Rails.application.routes.draw do
  root to: 'application#index'

  resources :users, only: [:index, :show, :new, :update, :create, :destroy]
  resources :deals, only: [:index, :show]
end
