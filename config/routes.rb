Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'development_orders/index'
  get 'development_orders/show'
  get 'development_orders/new'
  get 'development_orders/edit'
  get 'welcome/index'
  get 'clients/index'
  get 'clients/show'
  get 'clients/new'
  get 'clients/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'welcome#index'

  resources :clients
  resources :development_orders
  resources :users, only: [:new, :create]
  get "/account" => "users#show"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

end
