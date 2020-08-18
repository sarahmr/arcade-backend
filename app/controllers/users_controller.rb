class UsersController < ApplicationController
  def index
    users = User.all

    render json: users
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  def update

  end

  def destroy

  end

  def login
    user = User.find_by(name: params[:username])
    if user
      render json: user
    else
      render json: {error: "Please register as a new user."}
    end
  end

  def favorites
    
  end

  def leaderboard
    leaders = User.top_users

    render json: leaders
  end

  def stats
    user = User.find(params[:id])

    user_stats = user.user_stats

    render json: user_stats
  end

  private

  def user_params
    params.permit(:name)
  end

end
