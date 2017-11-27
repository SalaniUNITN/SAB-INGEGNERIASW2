Rails.application.routes.draw do


  resources :hours
  resources :invoices
  resources :clients
  resources :users


  #root alla pagina iniziale
  root "static_pages#home"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end