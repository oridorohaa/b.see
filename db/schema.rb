# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_08_165652) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "bike_rack_comments", force: :cascade do |t|
    t.bigint "bike_rack_id", null: false
    t.bigint "comment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bike_rack_id"], name: "index_bike_rack_comments_on_bike_rack_id"
    t.index ["comment_id"], name: "index_bike_rack_comments_on_comment_id"
  end

  create_table "bike_rack_likes", force: :cascade do |t|
    t.bigint "bike_rack_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bike_rack_id"], name: "index_bike_rack_likes_on_bike_rack_id"
    t.index ["user_id"], name: "index_bike_rack_likes_on_user_id"
  end

  create_table "bike_rack_reports", force: :cascade do |t|
    t.bigint "bike_rack_id", null: false
    t.bigint "report_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bike_rack_id"], name: "index_bike_rack_reports_on_bike_rack_id"
    t.index ["report_id"], name: "index_bike_rack_reports_on_report_id"
  end

  create_table "bike_racks", force: :cascade do |t|
    t.string "address"
    t.string "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.float "longitude"
    t.float "latitude"
    t.index ["user_id"], name: "index_bike_racks_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "lane_comments", force: :cascade do |t|
    t.bigint "lane_id", null: false
    t.bigint "comment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_lane_comments_on_comment_id"
    t.index ["lane_id"], name: "index_lane_comments_on_lane_id"
  end

  create_table "lane_likes", force: :cascade do |t|
    t.bigint "lane_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lane_id"], name: "index_lane_likes_on_lane_id"
    t.index ["user_id"], name: "index_lane_likes_on_user_id"
  end

  create_table "lane_reports", force: :cascade do |t|
    t.bigint "lane_id", null: false
    t.bigint "report_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lane_id"], name: "index_lane_reports_on_lane_id"
    t.index ["report_id"], name: "index_lane_reports_on_report_id"
  end

  create_table "lanes", force: :cascade do |t|
    t.string "street_name"
    t.string "start_point"
    t.string "end_point"
    t.string "drescription"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.index ["user_id"], name: "index_lanes_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "shop_comments", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.bigint "comment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_shop_comments_on_comment_id"
    t.index ["shop_id"], name: "index_shop_comments_on_shop_id"
  end

  create_table "shop_likes", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shop_likes_on_shop_id"
    t.index ["user_id"], name: "index_shop_likes_on_user_id"
  end

  create_table "shop_reports", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.bigint "report_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_shop_reports_on_report_id"
    t.index ["shop_id"], name: "index_shop_reports_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "address"
    t.string "hours"
    t.string "phone_number"
    t.string "description"
    t.string "website"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.float "longitude"
    t.float "latitude"
    t.string "name"
    t.index ["user_id"], name: "index_shops_on_user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id"
    t.string "taggable_type"
    t.bigint "taggable_id"
    t.string "tagger_type"
    t.bigint "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at", precision: nil
    t.string "tenant", limit: 128
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
    t.index ["tagger_type", "tagger_id"], name: "index_taggings_on_tagger_type_and_tagger_id"
    t.index ["tenant"], name: "index_taggings_on_tenant"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "video_comments", force: :cascade do |t|
    t.bigint "video_id", null: false
    t.bigint "comment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_video_comments_on_comment_id"
    t.index ["video_id"], name: "index_video_comments_on_video_id"
  end

  create_table "video_likes", force: :cascade do |t|
    t.bigint "video_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_video_likes_on_user_id"
    t.index ["video_id"], name: "index_video_likes_on_video_id"
  end

  create_table "video_reports", force: :cascade do |t|
    t.bigint "video_id", null: false
    t.bigint "report_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_video_reports_on_report_id"
    t.index ["video_id"], name: "index_video_reports_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_videos_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bike_rack_comments", "bike_racks"
  add_foreign_key "bike_rack_comments", "comments"
  add_foreign_key "bike_rack_likes", "bike_racks"
  add_foreign_key "bike_rack_likes", "users"
  add_foreign_key "bike_rack_reports", "bike_racks"
  add_foreign_key "bike_rack_reports", "reports"
  add_foreign_key "comments", "users"
  add_foreign_key "lane_comments", "comments"
  add_foreign_key "lane_comments", "lanes"
  add_foreign_key "lane_likes", "lanes"
  add_foreign_key "lane_likes", "users"
  add_foreign_key "lane_reports", "lanes"
  add_foreign_key "lane_reports", "reports"
  add_foreign_key "likes", "users"
  add_foreign_key "reports", "users"
  add_foreign_key "shop_comments", "comments"
  add_foreign_key "shop_comments", "shops"
  add_foreign_key "shop_likes", "shops"
  add_foreign_key "shop_likes", "users"
  add_foreign_key "shop_reports", "reports"
  add_foreign_key "shop_reports", "shops"
  add_foreign_key "taggings", "tags"
  add_foreign_key "video_comments", "comments"
  add_foreign_key "video_comments", "videos"
  add_foreign_key "video_likes", "users"
  add_foreign_key "video_likes", "videos"
  add_foreign_key "video_reports", "reports"
  add_foreign_key "video_reports", "videos"
end
