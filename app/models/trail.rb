class Trail < ApplicationRecord
  validates :name, :location, :distance, :elevation, presence: true
  validates :distance, :elevation, numericality: true

  has_many :hikes
  has_many :users, through: :hikes
  has_many :comments

  def hikes_attributes=(hikes_attributes)
    if !hikes_attributes["0"]["date"].nil?
      #first save to check for errors and to get an ID for the trail
      self.save
      hike = Hike.create(hikes_attributes["0"])
      hike.trail = self
      hike.save
    end
  end
end
