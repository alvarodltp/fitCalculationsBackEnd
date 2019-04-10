class StatSerializer < ActiveModel::Serializer
  attributes :user_id, :id, :date, :calories_to_maintain, :calories_for_goal, :bmr, :bmi, :protein_grams, :carb_grams, :fat_grams, :protein_percentage, :carb_percentage, :fat_percentage, :age, :activity_level, :goal, :body_type, :weight_in_kg, :weight_in_lb, :height_in_cm, :height_in_feet, :height_in_inches, :diet_type, :reason_to_get_fit, :measurement_system
  belongs_to :user
end
