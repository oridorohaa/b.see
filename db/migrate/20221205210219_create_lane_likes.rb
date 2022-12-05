class CreateLaneLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :lane_likes do |t|
      t.references :lane, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
