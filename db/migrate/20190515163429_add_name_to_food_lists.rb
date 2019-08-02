class AddNameToFoodLists < ActiveRecord::Migration[5.2]
  def change
    add_column :food_lists, :name, :string
  end
end
