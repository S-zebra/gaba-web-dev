Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"
  resources :accounts
  resources :posts
  resources :sessions, only: [:index, :new, :create, :destroy]
end
