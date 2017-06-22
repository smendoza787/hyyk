class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :hikes
  has_many :trails, through: :hikes

  def total_hikes
    self.hikes.size
  end

  def total_distance_hiked
    total_distance = 0
    self.hikes.each do |hike|
      total_distance += hike.trail.distance
    end
    total_distance
  end

  def total_elevation_climbed
    total_elevation = 0
    self.hikes.each do |hike|
      total_elevation += hike.trail.elevation
    end
    total_elevation
  end

  def longest_hike
    self.trails.order("distance").last
  end

  def tallest_hike
    self.trails.order("elevation").last
  end
end
