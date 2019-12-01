Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "application#current_user"

  get "/application/current_user", to:"application#current_user"

  get "/sessions/new", to: "sessions#new", as:"new_session"
  post "/sessions", to:"sessions#create"
  delete "/sessions", to:"sessions#destroy"

  get "/secrets", to:"secrets#show", as: "secrets"
end
