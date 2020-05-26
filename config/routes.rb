Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "family_members/:id", to: "family_members#show", as: :family_member
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
