Rails.application.routes.draw do
  resources :gift_lists
  resources :gifts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
