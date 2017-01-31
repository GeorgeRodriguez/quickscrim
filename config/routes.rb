Rails.application.routes.draw do

  resources :friendships do
  resources :direct_messages
 end

  # root to: 'users#new'
  # these routes are for showing users a login form, logging them in, and logging them out.
   get '/login' => 'sessions#new'
   post '/login' => 'sessions#create'
   get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  root to: 'landing#index'
end
