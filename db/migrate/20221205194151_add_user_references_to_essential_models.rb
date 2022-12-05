class AddUserReferencesToEssentialModels < ActiveRecord::Migration[7.0]
  def change
    add_reference :bike_racks, :user
    add_reference :lanes, :user
    add_reference :shops, :user
    add_reference :videos, :user
  end
end
