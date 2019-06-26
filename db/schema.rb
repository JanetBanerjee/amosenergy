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

ActiveRecord::Schema.define(version: 2019_06_25_193934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "payments", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "last4"
    t.decimal "amount", precision: 12, scale: 3
    t.boolean "success"
    t.string "authorization_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer "user_id"
    t.integer "provider_id"
    t.string "term_length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "esi_id"
    t.string "veterans"
    t.string "cert"
    t.string "term"
    t.string "service_type"
    t.string "energy_type"
    t.string "consultant_id"
    t.boolean "terms"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.string "energy_price"
    t.string "e_plan"
    t.string "average_rate"
    t.string "average_e_rate"
    t.string "low_rate"
    t.string "med_rate"
    t.string "high_rate"
    t.string "base_charge"
    t.string "term"
    t.string "term_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "user_type"
    t.string "phone_number"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "service_address"
    t.boolean "same_address"
    t.string "mailing_address"
    t.string "mailing_city"
    t.string "mailing_state"
    t.string "mailing_zip"
    t.string "mobile_number"
    t.string "work_number"
    t.date "birthdate"
    t.string "license"
    t.string "language"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
