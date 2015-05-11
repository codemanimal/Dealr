Rails.application.routes.draw do
  root to: 'application#index'

  # resources :deals, only: [:index, :show]
end
