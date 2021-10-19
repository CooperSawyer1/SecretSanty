Rails.application.routes.draw do
  resources :gift_lists, only: [:show, :index]
  resources :gifts, only: [:show, :index, :create, :new]
  resources :users, only: [:show, :index, :create, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
