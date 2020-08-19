class FavoritesController < ApplicationController
  def create
    favorite = Favorite.create(favorites_params)

    render json: favorite
  end

  def index 
    favorites = Favorite.all

    render json: favorites
  end
  
  def destroy
    favorite = Favorite.find(params[:id])

    favorite.destroy

    render json: favorite
  end

  private

  def favorites_params
    params.permit(:user_id, :game_id)
  end
end
