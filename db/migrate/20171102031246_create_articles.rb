class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.integer :rating_id
      t.string :title
      t.date :date
      t.string :source
      t.string :description

      t.timestamps
    end
  end
end
