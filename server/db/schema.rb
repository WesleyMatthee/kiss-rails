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

ActiveRecord::Schema[7.0].define(version: 2023_02_09_203032) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "casualties", force: :cascade do |t|
    t.bigint "incident_id", null: false
    t.string "name"
    t.date "dob"
    t.string "allergies"
    t.string "gender"
    t.string "illnesses"
    t.string "blood_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incident_id"], name: "index_casualties_on_incident_id"
  end

  create_table "incident_types", force: :cascade do |t|
    t.string "name"
    t.binary "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incidents", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "incident_type_id", null: false
    t.integer "incident_duration"
    t.string "location"
    t.string "age_stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incident_type_id"], name: "index_incidents_on_incident_type_id"
    t.index ["user_id"], name: "index_incidents_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vitals", force: :cascade do |t|
    t.bigint "incident_id", null: false
    t.integer "pulse"
    t.integer "respiration"
    t.string "skin_condition"
    t.boolean "pearl"
    t.string "extra_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incident_id"], name: "index_vitals_on_incident_id"
  end

  add_foreign_key "casualties", "incidents"
  add_foreign_key "incidents", "incident_types"
  add_foreign_key "incidents", "users"
  add_foreign_key "vitals", "incidents"
end
