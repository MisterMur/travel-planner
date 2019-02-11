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

ActiveRecord::Schema.define(version: 2019_02_11_161902) do

  create_table "activities", force: :cascade do |t|
    t.integer "ActivityType_id"
    t.string "name"
    t.string "age_category"
    t.datetime "time_spent"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ActivityType_id"], name: "index_activities_on_ActivityType_id"
  end

  create_table "activity_types", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destination_activity_types", force: :cascade do |t|
    t.integer "destination_id"
    t.integer "activity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_type_id"], name: "index_destination_activity_types_on_activity_type_id"
    t.index ["destination_id"], name: "index_destination_activity_types_on_destination_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "city"
    t.string "country"
    t.string "climate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travel_types", force: :cascade do |t|
    t.integer "user_id"
    t.integer "destination_id"
    t.string "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_travel_types_on_destination_id"
    t.index ["user_id"], name: "index_travel_types_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthdate"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
