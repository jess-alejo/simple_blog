Rails.application.routes.draw do
  resources :posts

  resources :sessions, only: :create
  get    "login",  to: "sessions#new"
  delete "logout", to: "sessions#destroy"

  resources :registrations, only: :create
  get "register", to: "registrations#new"

  get "about", to: "sites#about"

  root "sites#home"
end
