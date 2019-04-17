class FoodSerializer < ActiveModel::Serializer
  attributes :id, :food_list_id, :name, :category
  belongs_to :food_list
end
