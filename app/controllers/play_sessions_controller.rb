class PlaySessionsController < ApplicationController
  def create
    play_session = PlaySession.create(play_session_params)

    render json: play_session
  end

  def show

  end

  def index

  end

  private

  def play_session_params
    params.permit(:user_id, :game_id, :user_win)
  end
end
