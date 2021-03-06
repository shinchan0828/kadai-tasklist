Rails.application.routes.draw do

  get 'sessions/edit'

  root to:'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  
  get 'signup', to: 'users#new'
  
  resources :tasks, only: [:create, :destroy, :edit, :update]
  resources :users, only: [:index, :show, :new, :create]
end
