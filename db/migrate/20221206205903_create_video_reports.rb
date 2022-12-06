class CreateVideoReports < ActiveRecord::Migration[7.0]
  def change
    create_table :video_reports do |t|
      t.references :video, null: false, foreign_key: true
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
