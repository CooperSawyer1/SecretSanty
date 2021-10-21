Rails.application.routes.draw do
  root to: "home#index"
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions', to: 'sessions#destroy'

  resources :users, only: [:index, :show, :create, :new, :delete] do 
    resources :gifts, only: [:show, :index, :create, :new]
  end
  resources :gifts, only: [:show, :index, :create, :new]
  
end
