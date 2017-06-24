class HikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_hike!, only: [:show, :destroy]

  def index
  end

  def new
    @trail = Trail.find(params[:trail_id])
    @hike = Hike.new
  end

  def create
    @hike = Hike.new(hike_params)
    @trail = Trail.find(params[:trail_id])
    if @hike.valid?
      @hike.save
      redirect_to @hike.user, notice: "Hike successfully created!"
    else
      render :new
    end
  end

  def show
  end

  def edit
    # no need to edit
  end

  def update
    # no need to update
  end

  def destroy
    @hike.destroy

    redirect_to @hike.user, notice: "Hike successfully deleted."
  end

  private

    def hike_params
      params.require(:hike).permit(:date, :trail_id, :user_id)
    end

    def set_hike!
      @hike = Hike.find(params[:id])
    end

    def authenticate_hike_creator
      if @hike.user != current_user
        redirect_to @hike.user, notice: "You are not allowed to delete someone elses hike."
      end
    end
end
