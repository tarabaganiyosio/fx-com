Rails.application.routes.draw do
  
  root to: 'static_pages#home'
  get 'signup',  to: 'users#new'
  get 'addbroker',  to: 'brokers#new'
  get 'brokers' , to:'brokers#all'
  get 'edit' , to:'broker#edit'
  get 'update' , to:'broker#update'
  
  resources :users
  resources :brokers
end
