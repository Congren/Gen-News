class DropInterestTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :interests
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
