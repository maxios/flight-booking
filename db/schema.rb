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

ActiveRecord::Schema.define(version: 2021_03_29_003904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aeroplanes", force: :cascade do |t|
    t.string "name"
    t.json "config"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "origin"
    t.string "destination"
    t.bigint "aeroplane_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["aeroplane_id"], name: "index_flights_on_aeroplane_id"
  end

  create_table "seats", force: :cascade do |t|
    t.bigint "aeroplane_id", null: false
    t.float "base_price"
    t.string "class_type"
    t.string "pnr_number"
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["aeroplane_id"], name: "index_seats_on_aeroplane_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "flight_id", null: false
    t.bigint "user_id", null: false
    t.string "class_type", null: false
    t.string "pnr_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_id"], name: "index_tickets_on_flight_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "flights", "aeroplanes"
  add_foreign_key "seats", "aeroplanes"
  add_foreign_key "tickets", "flights"
  add_foreign_key "tickets", "users"
end
