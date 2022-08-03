class GameSerializer < ActiveModel::Serializer
  attributes :id, :title,:genre,:image,:platform
end
