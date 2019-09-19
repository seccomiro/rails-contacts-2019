Rails.application.routes.draw do
  get 'companies', to: 'companies#index'
  get 'companies/new', to: 'companies#new', as: :new_company
  get 'companies/:id', to: 'companies#show', as: :company
  post 'companies', to: 'companies#create'
  
  resources :phones
  resources :addresses
  resources :contacts
  resources :kinds, except: [:destroy]
  
  resources :people, only: [:index]

  root 'home#index'
end
