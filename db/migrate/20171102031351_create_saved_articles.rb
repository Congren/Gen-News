class CreateSavedArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :saved_articles do |t|
      t.integer :article_id
      t.integer :user_id

      t.timestamps
    end
  end
end
