Rails.application.routes.draw do
  get 'home/index'
  
  resources :phones
  resources :addresses
  resources :contacts
  resources :kinds, except: [:destroy]
  
  resources :people, only: [:index]

  root 'home#index'
end
