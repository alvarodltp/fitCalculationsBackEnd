class AddBmiToStats < ActiveRecord::Migration[5.2]
  def change
    add_column :stats, :bmi, :integer
  end
end
