class HikesController < ApplicationController
  def index
  end

  def new
    @trail = Trail.find(params[:trail_id])
    @hike = Hike.new
  end

  def create
    raise params.inspect
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
