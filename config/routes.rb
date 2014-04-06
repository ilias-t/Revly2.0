Revly2::Application.routes.draw do

  # Home page
  root to: "welcome#index"

  # Devise routes
  devise_for :users

  # Custom RESTful routes
  resources :users do
    resources :tiles, except: [:edit, :update]
  end

  # Get all tiles
  get "/tiles", to: "tiles#all" # Is this RESTFUL??

end
