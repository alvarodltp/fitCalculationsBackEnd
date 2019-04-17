class FoodListSerializer < ActiveModel::Serializer
  attributes :id, :date, :user_id
  belongs_to :user
  has_many :foods
end
