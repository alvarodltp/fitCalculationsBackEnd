class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :calories_to_maintain
      t.integer :calories_for_goal
      t.integer :bmr
      t.integer :protein_grams
      t.integer :carb_grams
      t.integer :fat_grams
      t.integer :protein_percentage
      t.integer :carb_percentage
      t.integer :fat_percentage
      t.timestamps
    end
  end
end
