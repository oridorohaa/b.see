class CreateLanes < ActiveRecord::Migration[7.0]
  def change
    create_table :lanes do |t|
      t.string :street_name
      t.string :start_point
      t.string :end_point
      t.string :drescription
      t.boolean :status

      t.timestamps
    end
  end
end
