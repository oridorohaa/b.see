class ChangeDescrptionToText < ActiveRecord::Migration[7.0]
  def change
    change_column :bike_racks, :description, :text
    change_column :videos, :description, :text
    change_column :shops, :description, :text
    change_column :reports, :content, :text
    change_column :lanes, :drescription, :text
  end
end
