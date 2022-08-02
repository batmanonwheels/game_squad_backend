class GameWithReviewSerializer < ActiveModel::Serializer
  attributes :id, :title,:genre,:image
  has_many :reviews
end
