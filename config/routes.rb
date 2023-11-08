Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "mainpage#index"
  get "/registration", to: "registration#new"
  post "/registration", to: "dictionary#create"
  get "/login", to: "login#new"
  post "/login", to: "login#create"
  delete "/login", to: "login#delete"
  get "/profile", to: "profile#show"
  get "/settings", to: "settings#show"
  patch "/settings", to: "settings#update"
  get "/card", to: "card#new"
  post "/card", to: "card#create"
  delete "/card", to: "card#delete"
  patch "/card", to: "card#update"

end
