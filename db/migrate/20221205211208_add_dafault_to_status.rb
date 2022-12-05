class AddDafaultToStatus < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bike_racks, :status, true
    change_column_default :lanes, :status, true
    change_column_default :shops, :status, true
    change_column_default :videos, :status, true
  end
end
