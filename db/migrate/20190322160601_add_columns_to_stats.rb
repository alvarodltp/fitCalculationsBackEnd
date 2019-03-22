class AddColumnsToStats < ActiveRecord::Migration[5.2]
  def change
    add_column :stats, :activity_level, :string
    add_column :stats, :goal, :string
    add_column :stats, :body_type, :string
    add_column :stats, :age, :integer
    add_column :stats, :weight_in_kg, :float
    add_column :stats, :weight_in_lb, :float
    add_column :stats, :height_in_feet, :integer
    add_column :stats, :height_in_inches, :integer
    add_column :stats, :height_in_cm, :float
    add_column :stats, :diet_type, :string
    add_column :stats, :reason_to_get_fit, :string
  end
end
