# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_25_215254) do

  create_table "admin_black_lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_admin_black_lists_on_admin_id"
    t.index ["user_id"], name: "index_admin_black_lists_on_user_id"
  end

  create_table "black_lists", force: :cascade do |t|
    t.integer "registred_user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_black_lists_on_post_id"
    t.index ["registred_user_id"], name: "index_black_lists_on_registred_user_id"
  end

  create_table "comment_images", force: :cascade do |t|
    t.string "link"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_comment_images_on_comment_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "dumpsters", force: :cascade do |t|
    t.integer "registred_user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_dumpsters_on_post_id"
    t.index ["registred_user_id"], name: "index_dumpsters_on_registred_user_id"
  end

  create_table "inappropriates", force: :cascade do |t|
    t.integer "registred_user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_inappropriates_on_post_id"
    t.index ["registred_user_id"], name: "index_inappropriates_on_registred_user_id"
  end

  create_table "post_images", force: :cascade do |t|
    t.string "link"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_images_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "body"
    t.string "country"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "photo"
    t.text "biography"
    t.string "geofence"
    t.string "country"
    t.string "city"
    t.integer "registred_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["registred_user_id"], name: "index_profiles_on_registred_user_id"
  end

  create_table "registred_users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "mail"
    t.string "password"
    t.string "username"
    t.integer "phone"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "system_admin_black_lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "system_admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["system_admin_id"], name: "index_system_admin_black_lists_on_system_admin_id"
    t.index ["user_id"], name: "index_system_admin_black_lists_on_user_id"
  end

  create_table "user_inappropriates", force: :cascade do |t|
    t.integer "post_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_user_inappropriates_on_post_id"
    t.index ["user_id"], name: "index_user_inappropriates_on_user_id"
  end

end
