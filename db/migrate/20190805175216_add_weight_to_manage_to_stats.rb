class AddWeightToManageToStats < ActiveRecord::Migration[5.2]
  def change
    add_column :stats, :weight_to_manage, :float
  end
end
