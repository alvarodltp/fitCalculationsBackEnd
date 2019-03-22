class RemoveColumnsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :activity_level, :string
    remove_column :users, :goal, :string
    remove_column :users, :body_type, :string
    remove_column :users, :age, :integer
    remove_column :users, :weight_in_kg, :float
    remove_column :users, :weight_in_lb, :float
    remove_column :users, :height_in_feet, :integer
    remove_column :users, :height_in_inches, :integer
    remove_column :users, :height_in_cm, :float
    remove_column :users, :diet_type, :string
    remove_column :users, :reason_to_get_fit, :string
  end
end
