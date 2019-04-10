class AddMeasurementSystemToStats < ActiveRecord::Migration[5.2]
  def change
    add_column :stats, :measurement_system, :string
  end
end
