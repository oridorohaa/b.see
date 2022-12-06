class CreateShopComments < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_comments do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
