class AddForeignKeysToTablesForUsers < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :bike_racks, :users
    add_foreign_key :lanes, :users
    add_foreign_key :shops, :users
    add_foreign_key :videos, :users
  end
end
