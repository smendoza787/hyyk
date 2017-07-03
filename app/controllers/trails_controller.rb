class TrailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_trail!, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_trail_creator, only: [:edit, :destroy]

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
  end

  def edit
  end

  def update
    @trail.update(trail_params)

    if @trail.save
      redirect_to @trail, notice: "#{@trail.name} successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @trail.hikes.each do |hike|
      hike.destroy
    end

    @trail.destroy

    redirect_to trails_path, notice: "Trail successfully deleted."
  end

  private

    def trail_params
      params.require(:trail).permit(:name, :location, :distance, :elevation, :trail_type, :created_by_user_id, hikes_attributes: [:date, :trail_id, :user_id])
    end

    def set_trail!
      @trail = Trail.find(params[:id])
    end

    def authenticate_trail_creator
      if @trail.created_by_user_id != current_user.id
        redirect_to @trail, notice: "You can't perform that action on this trail."
      end
    end
end
