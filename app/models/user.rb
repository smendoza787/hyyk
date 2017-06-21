class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :hikes
  has_many :trails, through: :hikes

  def hyyk(trail)
    self.total_elevation_climbed += trail.elevation
    self.total_distance_hiked += trail.distance
    self.total_hikes += 1
    self.save
  end

  def longest_hike
    self.trails.order("distance").last
  end

  def tallest_hike
    self.trails.order("elevation").last
  end
end
