class UserWithAssociationsSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name
  has_many :reviews
  has_many :games, through: :reviews
end
