Rails.application.routes.draw do
  get 'brokers/new'

  root to: 'static_pages#home'
  get 'signup',  to: 'users#new'
  get 'addbroker',  to: 'brokers#new'
  get 'brokers' , to:'brokers#all'
  
  resources :users
  resources :brokers
end
