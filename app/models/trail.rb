class Trail < ApplicationRecord
  validates :distance, :elevation, numericality: true

  has_many :hikes
  has_many :users, through: :hikes
end
