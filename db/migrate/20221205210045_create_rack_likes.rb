class CreateRackLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :rack_likes do |t|
      t.references :bike_rack, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
