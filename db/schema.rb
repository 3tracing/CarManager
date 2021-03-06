# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160203114256) do

  create_table "cars", force: :cascade do |t|
    t.string   "make"
    t.string   "model"
    t.string   "model_year"
    t.string   "variant"
    t.string   "rego"
    t.string   "colour"
    t.string   "vin"
    t.date     "date_acquired"
    t.string   "image"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "readings", force: :cascade do |t|
    t.integer  "car_id"
    t.date     "date"
    t.integer  "odo"
    t.float    "fuel_vol"
    t.float    "fuel_cost"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "readings", ["car_id"], name: "index_readings_on_car_id"

end
