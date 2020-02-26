Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :users

  resources :cars, only: [:new, :create, :index, :show] do
    resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :show, :destroy, :new, :create]

  namespace :owner do
    resources :cars, only: [:index, :destroy]
  end
end
