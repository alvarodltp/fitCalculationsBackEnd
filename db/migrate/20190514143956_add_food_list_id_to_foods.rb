class AddFoodListIdToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :food_list_id, :integer
  end
end
