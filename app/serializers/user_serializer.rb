class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :hikes
  has_many :comments
end
