class TilesController < ApplicationController

  def all
    @tiles = Tile.all
    render json: @tiles
  end

  def new
    @user = current_user
    @tile = Tile.new
  end

  def create
    Tile.create[tile_params]
    redirect_to root_path
  end

  private

  def tile_params
    params.require(:tile).permit(:message, :color)
  end

end