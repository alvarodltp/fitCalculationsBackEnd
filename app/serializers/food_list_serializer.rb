class FoodListSerializer < ActiveModel::Serializer
  attributes :id, :date, :user_id, :name, :total_cost
  belongs_to :user
  has_many :foods
end
