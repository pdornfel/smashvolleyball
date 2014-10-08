Rails.application.routes.draw do

  root 'players#new'

  get 'signup' => "players#new", as: "signup"

  resources :players
end
