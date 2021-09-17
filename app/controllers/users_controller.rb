class UsersController < ApplicationController
  def index
    users = User.all
    render json: users, include: :books
  end

  def create
    user = User.create(user_params)
    render json: user, status: :created
  end

  def show
    user = User.find_by(username: params[:username])
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    head :no_content
  end

  private

  def user_params
    params.permit(:firstname, :lastname, :username, :email, :password_digest)
  end
end
