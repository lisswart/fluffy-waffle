class SessionsController < ApplicationController
  def index
    session[:hello] ||= "world"
    cookies[:test] ||= "testing cookies"
    render json: { session: session, cookies: cookies.to_hash }
  end

  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    render json: { session: session }, status: :created
  end

  def destroy

  end
end
