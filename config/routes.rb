Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :family_members, only: [:index, :show, :new, :create] do
     resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: :show
end
