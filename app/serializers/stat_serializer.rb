class StatSerializer < ActiveModel::Serializer
  attributes :user_id, :id, :date, :calories_to_maintain, :calories_for_goal, :bmr, :protein_grams, :carb_grams, :fat_grams, :protein_percentage, :carb_percentage, :fat_percentage
  belongs_to :user
end
