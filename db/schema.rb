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

ActiveRecord::Schema.define(version: 20140610125701) do

  create_table "authorizations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "identities", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                                      default: "", null: false
    t.string   "encrypted_password",                         default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                              default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "is_facebook"
    t.boolean  "is_linkedin"
    t.boolean  "is_twitter"
    t.string   "linkedin_id"
    t.string   "linkedin_email_address"
    t.string   "linkedin_first_name"
    t.string   "linkedin_last_name"
    t.string   "linkedin_headline"
    t.string   "linkedin_industry"
    t.string   "linkedin_picture_url"
    t.string   "linkedin_public_profile_url"
    t.string   "linkedin_location"
    t.string   "facebook_nickname"
    t.string   "facebook_email"
    t.string   "facebook_name"
    t.string   "facebook_first_name"
    t.string   "facebook_last_name"
    t.string   "facebook_image"
    t.string   "facebook_urls"
    t.string   "facebook_location"
    t.string   "facebook_id"
    t.string   "facebook_nam"
    t.string   "facebook_first_nam"
    t.string   "facebook_last_nam"
    t.string   "facebook_lin"
    t.string   "facebook_usernam"
    t.string   "facebook_locatio"
    t.string   "facebook_gende"
    t.string   "facebook_emai"
    t.string   "facebook_timezon"
    t.string   "facebook_local"
    t.string   "facebook_verifie"
    t.string   "twitter_nickname"
    t.string   "twitter_name"
    t.string   "twitter_location"
    t.string   "twitter_image"
    t.string   "twitter_description"
    t.string   "twitter_Website"
    t.string   "twitter_Twitter"
    t.string   "twitter_listed_count"
    t.string   "twitter_profile_sidebar_border_color"
    t.string   "twitter_url"
    t.string   "twitter_lang"
    t.string   "twitter_statuses_count"
    t.string   "twitter_profile_image_url"
    t.string   "twitter_profile_background_image_url_https"
    t.string   "twitter_time_zone"
    t.string   "twitter_follow_request_sent"
    t.string   "twitter_id"
    t.string   "twitter_profile_background_tile"
    t.string   "twitter_profile_sidebar_fill_color"
    t.string   "twitter_followers_count"
    t.string   "twitter_default_profile_image"
    t.string   "twitter_screen_name"
    t.string   "twitter_following"
    t.string   "twitter_utc_offset"
    t.string   "twitter_verified"
    t.string   "twitter_favourites_count"
    t.string   "twitter_profile_background_color"
    t.string   "twitter_is_translator"
    t.string   "twitter_friends_count"
    t.string   "twitter_notifications"
    t.string   "twitter_geo_enabled"
    t.string   "twitter_profile_background_image_url"
    t.string   "twitter_protected"
    t.string   "twitter_profile_image_url_https"
    t.string   "twitter_default_profile"
    t.string   "twitter_profile_use_background_image"
    t.string   "twitter_profile_text_color"
    t.string   "twitter_contributors_enabled"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
