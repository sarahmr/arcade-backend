class PlaySessionsController < ApplicationController
  def create
    play_session = PlaySession.create(play_session_params)

    render json: play_session
  end

  def show

  end

  # def index
  #   play_sessions = PlaySession.all

  #   render json: play_sessions
  # end

  private

  def play_session_params
    params.permit(:user_id, :game_id, :user_win)
  end
end
