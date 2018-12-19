class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender, :age, :activity_level, :goal, :body_type, :weight_in_kg, :weight_in_lb, :height_in_cm, :height_in_feet, :height_in_inches
  has_many :stats
end
