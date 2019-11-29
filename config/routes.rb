Rails.application.routes.draw do

  get 'sessions/new', to: 'sessions#new'
  root 'sessions#new'
  get '/hello', to: 'application#hello'
  get 'secrets/show', to: 'secrets#show', as: 'secrets' 
  post 'sessions/create', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

end
