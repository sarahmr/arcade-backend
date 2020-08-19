Rails.application.routes.draw do
  
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
  post '/users/login', to: "users#login"
  get '/users', to: 'users#index'
  get "/users/leaderboard", to: 'users#leaderboard'
  get '/users/:id/stats', to: 'users#stats'

  get "/games", to: "games#index"
  get '/games/:id/top_players', to: 'games#top_players'

  post "/play_sessions", to: "play_sessions#create"

  post '/favorites', to: 'favorites#create'
  get '/favorites', to: 'favorites#index'
  delete '/favorites/:id', to: 'favorites#destroy'

end
