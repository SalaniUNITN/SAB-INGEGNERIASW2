Rails.application.routes.draw do
  get 'sessions/new'

  resources :add_hours do
    member do
      get 'total'
    end
  end
  resources :hourname_users
  resources :hours
  resources :invoices
  resources :clients
  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #root alla pagina iniziale
  root "static_pages#home"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
