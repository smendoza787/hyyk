class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def most_active
    @user = User.most_active
  end

  def trail_runner
    @user = User.trail_runner
  end

  def rock_climber
    @user = User.rock_climber
  end
end
