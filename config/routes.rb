Rails.application.routes.draw do
  root to: 'pages#home'

  resources :users, only: %i[index show new create edit update]

  resources :cars, only: [:new, :create, :index, :show]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :show, :destroy, :new, :create]
end
