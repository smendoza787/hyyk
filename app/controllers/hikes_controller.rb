class HikesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @trail = Trail.find(params[:trail_id])
    @hike = Hike.new
  end

  def create
    hike = Hike.create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
