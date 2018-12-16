Rails.application.routes.draw do
  get 'welcome/index'
  get 'clients/index'
  get 'clients/show'
  get 'clients/new'
  get 'clients/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'welcome#index'

  resources :clients
end
