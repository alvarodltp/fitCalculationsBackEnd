class Stat < ApplicationRecord
  belongs_to :user
  after_create :saveUserAfterStatCreate

  def saveUserAfterStatCreate
      client.contact_sync(
        "p[1]" => 1,
        "first_name" => self.user.name,
        "email" => self.user.email,
        "field[1,0]" => self.age,
        "field[2,0]" => self.user.gender,
        "field[3,0]" => self.activity_level,
        "field[4,0]" => self.body_type,
        "field[5,0]" => self.weight_in_lb,
        "field[6,0]" => self.height_in_feet,
        "field[7,0]" => self.diet_type,
        "field[8,0]" => self.reason_to_get_fit,
        "field[9,0]" => self.calories_for_goal,
        "field[10,0]" => self.bmr,
        "field[11,0]" => self.bmi,
        "field[12,0]" => self.calories_to_maintain,
        "field[13,0]" => self.protein_grams,
        "field[14,0]" => self.carb_grams,
        "field[15,0]" => self.fat_grams,
        "field[16,0]" => self.protein_percentage,
        "field[17,0]" => self.carb_percentage,
        "field[18,0]" => self.fat_percentage,
        "field[19,0]" => self.height_in_inches,
        "field[20,0]" => self.goal,
        "field[21,0]" => self.height_in_cm,
        "field[22,0]" => self.weight_in_kg,
        "field[23,0]" => self.measurement_system) if self.user.email.present?
  end
end
