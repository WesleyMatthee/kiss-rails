class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @report = User.find(params[:id])
    render json: @report, include: ["incidents"]
  end

end
