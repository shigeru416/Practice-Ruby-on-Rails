Rails.application.routes.draw do

  get '/signup', to: 'users#new', as: 'users_new'
  get 'static_pages/help', to: 'static_pages#help'
  get 'static_pages/about', to: 'static_pages#about'
  get 'static_pages/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  resources :users
  get '/login', to:'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
end
