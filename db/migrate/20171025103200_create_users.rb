class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :interest_id
      t.integer :saved_article_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.boolean :admin?

      t.timestamps
    end
  end
end
