class TrailsController < ApplicationController
  before_action :authenticate_user!

  def index
    @trails = Trail.all
  end

  def new
    @trail = Trail.new
  end

  def create
    @trail = Trail.new(trail_params)

    if @trail.save
      redirect_to @trail, notice: "Trail successfully created!"
    else
      render :new
    end
  end

  def show
    @trail = Trail.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def trail_params
      params.require(:trail).permit(:name, :location, :distance, :elevation, :trail_type)
    end
end
