class AddCoordsToLanes < ActiveRecord::Migration[7.0]
  def change
    add_column :lanes, :coords, :string
  end
end
