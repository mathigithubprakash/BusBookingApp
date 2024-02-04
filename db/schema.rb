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

ActiveRecord::Schema[7.1].define(version: 2024_02_02_121749) do
  create_table "buses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string "source"
    t.string "destination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_routes_on_id", unique: true
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "departure_time"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bus_id", null: false
    t.integer "route_id", null: false
    t.index ["bus_id"], name: "index_schedules_on_bus_id"
    t.index ["route_id"], name: "index_schedules_on_route_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "schedule_id", null: false
    t.integer "seat_number"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bus_id"
    t.index ["schedule_id"], name: "index_tickets_on_schedule_id"
  end

  add_foreign_key "schedules", "buses"
  add_foreign_key "schedules", "routes"
  add_foreign_key "tickets", "schedules"
end
