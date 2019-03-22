class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender
  has_many :stats
end
