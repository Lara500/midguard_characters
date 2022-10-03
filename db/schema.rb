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

ActiveRecord::Schema[7.0].define(version: 2022_10_03_092337) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "benefits", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "kind_name", null: false
  end

  create_table "character_wizards", force: :cascade do |t|
    t.string "kind_char"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "character_id"
    t.string "first_benefit"
    t.string "second_benefit"
    t.index ["character_id"], name: "index_character_wizards_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name", null: false
    t.string "surname", null: false
    t.string "gender", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "language", null: false
  end

  create_table "kinds", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender", null: false
    t.bigint "skills_id"
    t.bigint "main_parameters_id"
    t.index ["main_parameters_id"], name: "index_kinds_on_main_parameters_id"
    t.index ["skills_id"], name: "index_kinds_on_skills_id"
  end

  create_table "main_parameters", force: :cascade do |t|
    t.integer "physique"
    t.integer "dexterity"
    t.integer "perception"
    t.integer "intelligence"
    t.integer "control"
    t.integer "entropy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer "white_weapon"
    t.integer "grapple"
    t.integer "resilience"
    t.integer "short_weapon"
    t.integer "vehicle_service"
    t.integer "reflex"
    t.integer "long_weapon"
    t.integer "pilotage"
    t.integer "alert_senses"
    t.integer "connections"
    t.integer "technique"
    t.integer "knowledge"
    t.integer "hacking"
    t.integer "infiltration"
    t.integer "trick"
    t.integer "charisma"
    t.integer "hexeri"
    t.integer "willpower"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "character_wizards", "characters"
  add_foreign_key "kinds", "main_parameters", column: "main_parameters_id"
  add_foreign_key "kinds", "skills", column: "skills_id"
end
