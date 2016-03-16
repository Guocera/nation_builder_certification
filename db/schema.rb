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

ActiveRecord::Schema.define(version: 20160316115414) do

  create_table "events", force: :cascade do |t|
    t.string   "status"
    t.string   "name"
    t.string   "intro"
    t.string   "time_zone"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "contact_name"
    t.string   "contact_contact_phone"
    t.boolean  "contact_show_phone"
    t.string   "contact_contact_email"
    t.string   "contact_email"
    t.boolean  "contact_show_email"
    t.string   "rsvp_phone"
    t.string   "rsvp_address"
    t.boolean  "rsvp_allow_guests"
    t.boolean  "rsvp_accept_rsvps"
    t.boolean  "rsvp_gather_volunteers"
    t.boolean  "show_guests"
    t.integer  "capacity"
    t.string   "venue_name"
    t.string   "venue_address_address"
    t.string   "venue_address_city"
    t.string   "venue_address_state"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "email"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "sex"
    t.integer  "signup_type"
    t.string   "employer"
    t.string   "party"
    t.string   "registered_address_state"
    t.string   "registered_address_country_code"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
