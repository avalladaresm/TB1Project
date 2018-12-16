Rails.application.routes.draw do
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
end
