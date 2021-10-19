Rails.application.routes.draw do
  root to: "home#index"

  resources :users, only: [:index, :show, :create, :new]
  resources :gift_lists, only: [:show, :index]
  resources :gifts, only: [:show, :index, :create, :new]
  resources :sessions, only: [:new, :create, :destroy]
  # resources :sessions, only: [:new, :create, :destroy, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
