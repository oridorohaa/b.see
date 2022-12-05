class RenameRackLikesTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :rack_likes, :bike_rack_likes
  end
end
