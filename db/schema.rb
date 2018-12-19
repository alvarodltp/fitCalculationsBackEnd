# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_05_140546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stats", force: :cascade do |t|
    t.integer "user_id"
    t.integer "calories_to_maintain"
    t.integer "calories_for_goal"
    t.integer "bmr"
    t.integer "protein_grams"
    t.integer "carb_grams"
    t.integer "fat_grams"
    t.integer "protein_percentage"
    t.integer "carb_percentage"
    t.integer "fat_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "gender"
    t.string "activity_level"
    t.string "goal"
    t.string "body_type"
    t.integer "age"
    t.float "weight_in_kg"
    t.float "weight_in_lb"
    t.integer "height_in_feet"
    t.integer "height_in_inches"
    t.float "height_in_cm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
