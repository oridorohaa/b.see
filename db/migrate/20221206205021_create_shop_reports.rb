class CreateShopReports < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_reports do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
