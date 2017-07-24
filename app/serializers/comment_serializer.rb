class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :trail_id, :created_at
end
