class GamesController < ApplicationController
  def index
    games = Game.all
    render json: games
  end

  def show

  end

  private

  def games_params
    params.permit(:name, :image)
  end
end
