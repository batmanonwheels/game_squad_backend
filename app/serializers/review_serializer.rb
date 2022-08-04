class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :upvotes, :downvotes, :rating
  has_one :game
  has_one :user
end
