class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
     t.string :name
     t.string :email
     t.string :gender
     t.string :activity_level
     t.string :goal
     t.string :body_type
     t.integer :age
     t.float :weight_in_kg
     t.float :weight_in_lb
     t.integer :height_in_feet
     t.integer :height_in_inches
     t.float :height_in_cm
     t.timestamps
    end
  end
end
