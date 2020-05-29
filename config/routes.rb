Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  delete "/family_members/:id", to: 'family_members#destroy', as: 'destroy_family_members'
  resources :family_members, only: [:index, :show, :new, :create, :edit, :update] do
     resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: :show
end
