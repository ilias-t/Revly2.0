class WelcomeController < ApplicationController

  def index
    # Current User from DB to backend
    @user = current_user
    # All Tiles from DB to backend
    @tiles = Tile.order("created_at DESC").all
    # Current User from backend to frontend
    gon.currentUser = @user
    # All Tiles from backend to frontend
    gon.tiles = @tiles
  end

  def search_song
    client = Soundcloud.new(client_id: SOUNDCLOUD_CLIENT_ID)
    @sounds = client.get("/tracks", q: "#{params[:query]}", limit: 10, order: "hotness")
    gon.lastSearch = @sounds
    render json: @sounds
  end

end