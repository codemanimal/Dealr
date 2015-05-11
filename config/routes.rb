Rails.application.routes.draw do
  root to: 'application#index'

  resources :users, only: [:index, :show, :new, :update, :create, :destroy]
  resources :deals, only: [:index, :show]

  get 'sessions/new' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'
end
