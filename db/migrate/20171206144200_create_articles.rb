class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.date :date
      t.string :source
      t.string :description
      t.string :emotional
      t.string :political
      t.string :consensus
      t.string :author
      t.string :pic

      t.timestamps
    end
  end
end
