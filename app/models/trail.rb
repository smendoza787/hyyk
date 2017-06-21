class Trail < ApplicationRecord
  validates :name, :location, :distance, :elevation, presence: true
  validates :distance, :elevation, numericality: true

  has_many :hikes
  has_many :users, through: :hikes
end
