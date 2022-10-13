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

ActiveRecord::Schema[7.0].define(version: 2022_10_10_090229) do
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
    t.bigint "kinds_id"
    t.index ["kinds_id"], name: "index_main_parameters_on_kinds_id"
  end

  create_table "skills", force: :cascade do |t|
    t.integer "side_arm"
    t.integer "hand_to_hand_combat"
    t.integer "endurance"
    t.integer "short_weapon"
    t.integer "vehicle_service"
    t.integer "reflex"
    t.integer "long_weapon"
    t.integer "pilotage"
    t.integer "alert_senses"
    t.integer "connections"
    t.integer "engineering"
    t.integer "knowledge"
    t.integer "hacking"
    t.integer "infiltration"
    t.integer "trick"
    t.integer "charisma"
    t.integer "hexeri"
    t.integer "willpower"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "kinds_id"
    t.index ["kinds_id"], name: "index_skills_on_kinds_id"
  end

  add_foreign_key "character_wizards", "characters"
  add_foreign_key "main_parameters", "kinds", column: "kinds_id"
  add_foreign_key "skills", "kinds", column: "kinds_id"
end
