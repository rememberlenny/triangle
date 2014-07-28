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

ActiveRecord::Schema.define(version: 20140513045040) do

  create_table "articles", force: true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "geoname_id"
    t.string   "continent_code"
    t.string   "continent_name"
    t.string   "country_iso_code"
    t.string   "country_name"
    t.string   "subdivision_iso_code"
    t.string   "subdivision_name"
    t.string   "city_name"
    t.integer  "metro_code"
    t.string   "time_zone"
  end

  create_table "products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "geoname_id"
    t.string   "continent_code"
    t.string   "continent_name"
    t.string   "country_iso_code"
    t.string   "country_name"
    t.string   "subdivision_iso_code"
    t.string   "subdivision_name"
    t.string   "city_name"
    t.integer  "metro_code"
    t.string   "time_zone"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
