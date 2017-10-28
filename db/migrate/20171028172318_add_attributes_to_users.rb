class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :interests, :string
  end
end
