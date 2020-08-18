Rails.application.routes.draw do
  # resources :favorites
  # resources :play_sessions
  # resources :games
  # resources :users
  
  get '/users/:id', to: "users#show"
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
  post '/users/login', to: "users#login"
  get '/users/favorites', to: "users#favorites"

  get '/games/:id', to: "games#show"
  get "/games", to: "games#index"

  post "/play_sessions", to: "play_sessions#create"
  get '/play_sessions/:id', to: "play_sessions#show"
  get '/play_sessions', to: 'play_sessions#index'

  post '/favorites', to: 'favorites#create'
  delete '/favorites/:id', to: 'favorites#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
