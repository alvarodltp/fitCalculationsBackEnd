# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Alvaro", email: "alvaro@gmail.com", gender: "male", activity_level: "Moderately Active", goal: "Gain Muscle", body_type: "Mesomorph", age: 29, weight_in_kg: 90.0, weight_in_lb: 200.0, height_in_cm: 180.0, height_in_feet: 5.11)
stat1 = Stat.create(user_id: 1, calories_to_maintain: 0, calories_for_goal: 0, bmr: 0, protein_grams: 200, carb_grams: 90, fat_grams: 80, protein_percentage: 40, carb_percentage: 30, fat_percentage: 30)
