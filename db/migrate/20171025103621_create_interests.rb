class CreateInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :interests do |t|
      t.integer :location_id
      t.boolean :politics
      t.boolean :sports
      t.boolean :economy
      t.boolean :weather
      t.boolean :local
      t.boolean :national
      t.boolean :world
      t.boolean :gadget
      t.boolean :fashion
      t.boolean :lifestyle

      t.timestamps
    end
  end
end
