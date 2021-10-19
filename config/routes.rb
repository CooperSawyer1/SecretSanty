Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :gift_lists, only: [:show, :index]
  resources :gifts, only: [:show, :index, :create, :new]
  # resources :sessions, only: [:new, :create, :destroy, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
