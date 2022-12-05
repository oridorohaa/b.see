class CreateBikeRacks < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_racks do |t|
      t.string :address
      t.string :description
      t.boolean :status

      t.timestamps
    end
  end
end
