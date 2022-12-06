class CreateLaneComments < ActiveRecord::Migration[7.0]
  def change
    create_table :lane_comments do |t|
      t.references :lane, null: false, foreign_key: true
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
