class HikesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @trail = Trail.find(params[:trail_id])
    @hike = Hike.new
  end

  def create
    hike = Hike.create(hike_params)
    current_user.hyyk(hike.trail)
    redirect_to trail_hike_path(params[:trail_id], hike), notice: "Hike successfully created!"
  end

  def show
    @hike = Hike.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def hike_params
      params.require(:hike).permit(:date, :trail_id, :user_id)
    end
end
