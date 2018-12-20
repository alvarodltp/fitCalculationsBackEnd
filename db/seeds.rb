# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Alvaro", email: "alvarodltp@gmail.com", gender: "Male", age: 29, activity_level: "Maso", goal: "Lose Weight", weight_in_kg: "", height_in_cm: "", body_type: "Mesomorph", weight_in_lb: 190, height_in_feet: 5, height_in_inches: 11 )

stats1 = Stat.create(user_id: 1, date: "", calories_to_maintain: 1900, calories_for_goal: 2200, bmr: 1800, protein_grams: 198, carb_grams: 200, fat_grams: 90, protein_percentage: "", carb_percentage: "", fat_percentage: "")
