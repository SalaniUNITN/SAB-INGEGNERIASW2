Rails.application.routes.draw do
  resources :hours
  resources :invoices
  resources :clients
  get 'sessions/new'
  resources :users
  root 'static_pages#home'
  root 'users#home'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
