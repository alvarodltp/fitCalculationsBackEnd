Rails.application.routes.draw do
  resources :foods
  resources :food_lists
  resources :stats
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/signup', to: 'users#signup'
  post '/login', to: 'auth#login'
  get '/profile', to: 'users#show'

end
