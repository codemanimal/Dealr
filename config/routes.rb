Rails.application.routes.draw do
  # App will root to 'application#index'
  root to: 'application#index'

  # Make available necessary 'users' and 'deals' routes
  resources :users, only: [:show, :new, :update, :create, :destroy]
  resources :deals, only: [:index, :show]

  # Make available necessary 'sessions' routes
  get 'sessions/new' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'

  # Make available necessary 'about' routes
  get 'about' => 'about#index'

  # Make available routes to 'add_deal' to and 'remove_deal' from user
  # resources	:users do
  # 	member do
  # 		put 'add_deal', as: :add_deal_to
  # 		put 'remove_deal', as: :remove_deal_from
  # 	end
  # end
  
end
