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

ActiveRecord::Schema[8.0].define(version: 2024_12_23_195225) do
  create_table "networks", force: :cascade do |t|
    t.string "name"
    t.string "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mask", null: false
  end

  create_table "nodes", force: :cascade do |t|
    t.string "name"
    t.string "ip"
    t.integer "network_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["network_id"], name: "index_nodes_on_network_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "ip"
    t.integer "node_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["node_id"], name: "index_services_on_node_id"
  end

  add_foreign_key "nodes", "networks"
  add_foreign_key "services", "nodes"
end
