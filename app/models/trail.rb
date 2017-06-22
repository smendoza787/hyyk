class Trail < ApplicationRecord
  validates :name, :location, :distance, :elevation, presence: true
  validates :distance, :elevation, numericality: true

  has_many :hikes
  has_many :users, through: :hikes

  def hikes_attributes=(hikes_attributes)
    #first save to check for errors and to get an ID for the trail
    if !hikes_attributes["0"]["date"].nil?
      self.save
      hike = Hike.create(hikes_attributes["0"])
      hike.trail = self
      hike.save
    end
  end
end
