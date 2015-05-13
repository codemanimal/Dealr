Rails.application.routes.draw do
  root to: 'application#index'

  resources :users, only: [:index, :show, :new, :update, :create, :destroy]
  resources :deals, only: [:index, :show]

  get 'sessions/new' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'

  get 'about' => 'about#index'

  resources	:users do
  	member do
  		put 'add_deal', as: :add_deal_to
  		put 'remove_deal', as: :remove_deal_from
  	end
  end
  
end
