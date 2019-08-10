class AddTotalCostToFoodLists < ActiveRecord::Migration[5.2]
  def change
    add_column :food_lists, :total_cost, :float
  end
end
