class AddDateToStats < ActiveRecord::Migration[5.2]
  def change
    add_column :stats, :date, :date
  end
end
