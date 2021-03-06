class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :distance, :elevation, :trail_type
  has_many :users
  has_many :comments
end
