class AddNameToShop < ActiveRecord::Migration[7.0]
  def change
    add_column :shops, :name, :string
  end
end
