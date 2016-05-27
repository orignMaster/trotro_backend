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

ActiveRecord::Schema.define(version: 20160527212927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "timezone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fare_rules", force: :cascade do |t|
    t.string   "route_id"
    t.string   "fare_id"
    t.string   "contains_id"
    t.string   "destination_id"
    t.string   "origin_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "fares", force: :cascade do |t|
    t.string   "fare_id"
    t.decimal  "price"
    t.string   "currency_type"
    t.string   "payment_method"
    t.string   "transfers"
    t.string   "transfer_duration"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string  "route_id"
    t.string  "route_short_name"
    t.integer "agency_id"
    t.string  "route_long_name"
    t.integer "route_type"
  end

  create_table "shapes", force: :cascade do |t|
    t.integer "shape_id"
    t.decimal "shape_pt_lat",      precision: 10, scale: 6
    t.decimal "shape_pt_long",     precision: 10, scale: 6
    t.integer "shape_pt_sequence"
  end

  create_table "stop_times", force: :cascade do |t|
    t.string "trip_id"
    t.string "arrival_time"
    t.string "departure_time"
    t.string "stop_sequence"
    t.string "stop_id"
  end

  create_table "stops", force: :cascade do |t|
    t.string  "stop_id"
    t.string  "stop_name"
    t.decimal "stop_lat",  precision: 10, scale: 6
    t.decimal "stop_long", precision: 10, scale: 6
  end

  create_table "trips", force: :cascade do |t|
    t.string "route_id"
    t.string "service_id"
    t.string "trip_id"
    t.string "shape_id"
  end

end
