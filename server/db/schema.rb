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

ActiveRecord::Schema[7.0].define(version: 2023_02_04_200220) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "casualties", force: :cascade do |t|
    t.string "name"
    t.date "dob"
    t.string "allergies"
    t.string "gender"
    t.string "illnesses"
    t.string "blood_types"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incident_types", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incidents", force: :cascade do |t|
    t.integer "user_id"
    t.integer "incident_type_id"
    t.time "incident_duration"
    t.datetime "incident_time", precision: nil
    t.string "location"
    t.integer "pulse"
    t.datetime "pulse_time", precision: nil
    t.integer "respirations"
    t.datetime "respirations_time", precision: nil
    t.text "skin_condition"
    t.datetime "skin_condition_time", precision: nil
    t.text "pearl"
    t.datetime "pearl_time", precision: nil
    t.text "extra_notes"
    t.string "age_stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
