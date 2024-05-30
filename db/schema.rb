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

ActiveRecord::Schema[7.1].define(version: 2024_05_30_033656) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kinesiologist_details", force: :cascade do |t|
    t.string "specialty"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_kinesiologist_details_on_user_id"
  end

  create_table "personal_informations", force: :cascade do |t|
    t.decimal "weight"
    t.decimal "height"
    t.string "lesions"
    t.string "gender"
    t.string "physical_activity"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_personal_informations_on_user_id"
  end

  create_table "personal_trainer_details", force: :cascade do |t|
    t.string "specialty"
    t.string "profession"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_personal_trainer_details_on_user_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.string "exercise"
    t.string "classification"
    t.date "day"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trainings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.float "weight"
    t.float "height"
    t.string "lesions"
    t.string "genre"
    t.string "physical_activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "warm_ups", force: :cascade do |t|
    t.string "exercise"
    t.bigint "training_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["training_id"], name: "index_warm_ups_on_training_id"
  end

  add_foreign_key "kinesiologist_details", "users"
  add_foreign_key "personal_informations", "users"
  add_foreign_key "personal_trainer_details", "users"
  add_foreign_key "trainings", "users"
  add_foreign_key "warm_ups", "trainings"
end
