class AddAttributesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :interests, :string, array:true, default:[]
  end
end
