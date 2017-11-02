class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.string :reliability_score
      t.string :details

      t.timestamps
    end
  end
end
