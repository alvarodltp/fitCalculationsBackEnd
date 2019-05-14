class CreateFoodListsFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :food_lists_foods do |t|
      t.integer :food_list_id
      t.integer :food_id
    end
  end
end
