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

ActiveRecord::Schema.define(version: 20161018144552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "band_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "phone"
    t.string   "email"
    t.date     "depart"
    t.date     "return"
    t.integer  "money"
    t.integer  "experience"
    t.string   "website"
    t.string   "soundcloud"
    t.string   "youtube"
    t.string   "bandcamp"
    t.string   "other_site"
    t.text     "artist_bio"
    t.string   "sounds_like1"
    t.string   "sounds_like2"
    t.string   "sounds_like3"
    t.string   "press_link1"
    t.string   "press_link2"
    t.string   "press_link3"
    t.boolean  "press_interest"
    t.boolean  "poster_interest"
    t.boolean  "event_interest"
    t.boolean  "advert_interest"
    t.text     "routing"
    t.text     "other_info"
    t.string   "referral"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "main_photo_file_name"
    t.string   "main_photo_content_type"
    t.integer  "main_photo_file_size"
    t.datetime "main_photo_updated_at"
    t.boolean  "products_photos"
    t.boolean  "products_recording"
    t.boolean  "products_mastering"
    t.boolean  "products_live_equipment"
    t.boolean  "products_loan"
    t.boolean  "products_video"
    t.boolean  "products_mixing"
    t.boolean  "products_studio_equipment"
    t.boolean  "products_tickets"
    t.boolean  "products_posters"
    t.boolean  "products_workshops"
    t.string   "live_photo_file_name"
    t.string   "live_photo_content_type"
    t.integer  "live_photo_file_size"
    t.datetime "live_photo_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "misc_photo1_file_name"
    t.string   "misc_photo1_content_type"
    t.integer  "misc_photo1_file_size"
    t.datetime "misc_photo1_updated_at"
    t.string   "misc_photo2_file_name"
    t.string   "misc_photo2_content_type"
    t.integer  "misc_photo2_file_size"
    t.datetime "misc_photo2_updated_at"
  end

end
