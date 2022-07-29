Rails.application.routes.draw do
  resources :games, only: :index

  # create user signup
  post "/signup", to: "users#create"

  # show authenticated user 
  get 'me', to: "users#show"

  # create new session
  post "/login", to: "sessions#create"

  # destroys session
  delete "/logout", to: "sessions#destroy"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end