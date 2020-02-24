Rails.application.routes.draw do
  resources :user, only: %i[index show new create edit update]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
