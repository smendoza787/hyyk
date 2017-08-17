class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user!, only: [:show]

  def show
    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end

  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
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

  private

    def set_user!
      @user = User.find(params[:id])
    end
end
