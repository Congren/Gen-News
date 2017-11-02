class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :city
      t.integer :zip

      t.timestamps
    end
  end
end
