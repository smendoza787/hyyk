class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  has_many :hikes
  has_many :trails, through: :hikes

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  def total_hikes
    self.hikes.size
  end

  def total_distance_hiked
    total_distance = 0
    if self.hikes.any?
      self.hikes.each do |hike|
        total_distance += hike.trail.distance
      end
    end
    total_distance
  end

  def total_elevation_climbed
    total_elevation = 0
    if self.hikes.any?
      self.hikes.each do |hike|
        total_elevation += hike.trail.elevation
      end
    end
    total_elevation
  end

  def longest_hike
    self.trails.order("distance").last || 0
  end

  def tallest_hike
    self.trails.order("elevation").last || 0
  end

  def self.most_active
    all.sort_by{|user| user.total_hikes}.reverse.first
  end

  def self.rock_climber
    all.sort_by{|user| user.total_elevation_climbed}.reverse.first
  end

  def self.trail_runner
    all.sort_by{|user| user.total_distance_hiked}.reverse.first
  end
end
