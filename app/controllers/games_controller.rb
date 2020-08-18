class GamesController < ApplicationController
  def index
    games = Game.all
    render json: games
  end

  def top_players
    game = Game.find(params[:id])

    players = game.top_players

    render json: players
  end

  private

  def games_params
    params.permit(:name, :image)
  end
end
