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

ActiveRecord::Schema.define(version: 2019_09_03_063414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collectors", force: :cascade do |t|
    t.string "name"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "open_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "open_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "address"
    t.string "collection_status"
    t.string "customer_phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.bigint "trash_collector_id"
    t.date "date"
    t.time "time"
    t.float "latitude"
    t.float "longitude"
    t.string "name"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["trash_collector_id"], name: "index_orders_on_trash_collector_id"
  end

  create_table "trash_collectors", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "trash_collectors"
end
