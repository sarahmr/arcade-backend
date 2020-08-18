class UsersController < ApplicationController
  def show

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

  private

  def user_params
    params.permit(:name)
  end

end
