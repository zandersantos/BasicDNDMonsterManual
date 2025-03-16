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

ActiveRecord::Schema[8.0].define(version: 2025_03_16_191441) do
  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "damage_type"
    t.string "damage_dice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monster_abilities", force: :cascade do |t|
    t.integer "monster_id", null: false
    t.integer "ability_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ability_id"], name: "index_monster_abilities_on_ability_id"
    t.index ["monster_id"], name: "index_monster_abilities_on_monster_id"
  end

  create_table "monster_actions", force: :cascade do |t|
    t.integer "monster_id", null: false
    t.integer "action_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_monster_actions_on_action_id"
    t.index ["monster_id"], name: "index_monster_actions_on_monster_id"
  end

  create_table "monster_images", force: :cascade do |t|
    t.string "url"
    t.integer "monster_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monster_id"], name: "index_monster_images_on_monster_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "armour_class"
    t.string "hitpoints"
    t.string "hit_dice"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "monster_abilities", "abilities"
  add_foreign_key "monster_abilities", "monsters"
  add_foreign_key "monster_actions", "actions"
  add_foreign_key "monster_actions", "monsters"
  add_foreign_key "monster_images", "monsters"
end
