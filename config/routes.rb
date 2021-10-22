Rails.application.routes.draw do
  root to: "home#index"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:index, :show, :create, :new, :delete] do 
    resources :gifts, only: [:show, :index, :create, :new]
  end
  resources :gifts, only: [:show, :index, :create, :new]
  
end
