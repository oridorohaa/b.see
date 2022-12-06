class CreateBikeRackComments < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_rack_comments do |t|
      t.references :bike_rack, null: false, foreign_key: true
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
