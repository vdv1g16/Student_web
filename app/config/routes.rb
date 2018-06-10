Rails.application.routes.draw do
  root 'students#index'
  get 	 '/signup', to: 'students#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :students
  
end
