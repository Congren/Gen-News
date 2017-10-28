class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	   rename_column :users, :interest_id, :location_id
  end
end
