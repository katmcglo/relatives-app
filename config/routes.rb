Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :family_members, only: [:index, :show] do
     resources :bookings, only: :new
  end
end
