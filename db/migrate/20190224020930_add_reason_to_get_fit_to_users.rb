class AddReasonToGetFitToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :reason_to_get_fit, :string
  end
end
