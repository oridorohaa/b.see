class AddLatLongToRack < ActiveRecord::Migration[7.0]
  def change
    add_column :bike_racks, :longitude, :float
    add_column :bike_racks, :latitude, :float
  end
end
