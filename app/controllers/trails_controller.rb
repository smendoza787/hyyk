class TrailsController < ApplicationController
  def index
  end

  def new
    @trail = Trail.new
  end

  def create
    @trail = Trail.build(trail_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def trail_params
      params.require(:trail).permit(:name, :location, :distance, :elevation, :type)
    end
end
