class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :address
      t.string :hours
      t.string :phone_number
      t.string :description
      t.string :website
      t.boolean :status

      t.timestamps
    end
  end
end
