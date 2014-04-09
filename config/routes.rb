Revly2::Application.routes.draw do

  # Home page
  root to: "welcome#index"

  # Devise routes
  devise_for :users

  # Custom RESTful routes
  resources :users, only: [:show, :index] do
    resources :tiles, only: [:index, :create, :show, :destroy, :new]
  end

  # Get all tiles
  get "/tiles", to: "tiles#all"

  # Get soundcloud search results
  get "/searchsong", to: "welcome#search_song"

end
