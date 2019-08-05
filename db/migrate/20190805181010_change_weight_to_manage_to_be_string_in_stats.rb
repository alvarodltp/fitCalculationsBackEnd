class ChangeWeightToManageToBeStringInStats < ActiveRecord::Migration[5.2]
  def change
    change_column :stats, :weight_to_manage, :string
  end
end
