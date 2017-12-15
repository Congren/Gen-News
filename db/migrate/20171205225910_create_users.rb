class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :location_id
      t.string :first_name
      t.string :last_name
      t.boolean :admin?

      t.timestamps
    end
  end
end
