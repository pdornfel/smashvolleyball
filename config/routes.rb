Rails.application.routes.draw do

  root 'players#new'

  get 'signup' => "players#new", as: "signup"
  get 'admin' => "players#index"

  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'

  resources :players
  resources :sessions
end
