class CreateLaneReports < ActiveRecord::Migration[7.0]
  def change
    create_table :lane_reports do |t|
      t.references :lane, null: false, foreign_key: true
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
