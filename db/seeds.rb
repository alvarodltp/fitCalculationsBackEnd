# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

foods = Food.create([{id: 1, value: "Chicken", category: "protein", isChecked: false},
{id: 2, value: "Sweet Potato", category: "carbs", isChecked: false},
{id: 3, value: "Olive Oil", category: "fats", isChecked: false},
{id: 4, value: "Green Peppers", category: "veggies", isChecked: false}])
