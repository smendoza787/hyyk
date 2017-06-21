class Hike < ApplicationRecord
  validates :date, presence: true

  belongs_to :user
  belongs_to :trail
end
