class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :image, :platform
  has_many :reviews
end
