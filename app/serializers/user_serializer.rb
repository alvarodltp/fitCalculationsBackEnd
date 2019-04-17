class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender
  has_many :stats
  has_many :food_lists
end
