class FavoritesController < ApplicationController
  def create

  end
  
  def destroy

  end

  private

  def favorites_params
    params.permit(:user_id, :game_id)
  end
end
