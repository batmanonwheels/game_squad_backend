class ReviewWithGameSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :upvotes, :downvotes, :rating
  belongs_to :game
  belongs_to :user
end
