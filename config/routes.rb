Rails.application.routes.draw do
  resources :games, only: :index

  # create user signup
  post "/signup", to: "users#create"

  # show authenticated user 
  get 'me', to: "users#show"

  # create new session
  post "/login", to: "session#create"

  # destroys session
  delete "/logout", to: "session#destroy"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
