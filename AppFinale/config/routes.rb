Rails.application.routes.draw do


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


  #root alla pagina iniziale
  root "static_pages#home"
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
