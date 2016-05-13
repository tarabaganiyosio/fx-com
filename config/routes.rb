Rails.application.routes.draw do
  
  resources :posts
  resources :writes
  resources :comments
  get 'sessions/new'
  root to: 'static_pages#home'
  get 'signup' ,  to: 'users#new'
  get 'user_page' , to: 'users#show'
  get 'broker_edit' , to: 'broker#edit'
  get 'update' , to: 'broker#update'
  get 'login' , to: 'sessions#new'
  post 'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  devise_for :users
  resources :users
  resources :brokers
  resources :boards do
    resources :writings, only: [:create, :destroy]
  end
end
