Rails.application.routes.draw do
  resources :comments
  resources :auths
  resources :suggestions
  resources :artifacts
  resources :skills
  resources :stats
  resources :ownerships
  resources :heros
  resources :users

  get "/builds/:id", to: "ownerships#page_show"
  get "/review", to: "ownerships#review"
  post "/register", to: "users#create"
  post "/login", to: "auths#login"
  get "/autologin", to: "auths#autologin"
  get "/builds", to: "ownerships#show"
  post "/logout", to: "auths#logout"
  post "/approve", to: "ownerships#approvee"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
