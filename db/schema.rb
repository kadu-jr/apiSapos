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

ActiveRecord::Schema.define(version: 2018_11_02_010648) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "carrier_wave_files", force: :cascade do |t|
    t.string "identifier"
    t.string "medium_hash"
    t.binary "binary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_images", force: :cascade do |t|
    t.string "name"
    t.string "text"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "imagebase"
  end

  create_table "form_images_templates", id: false, force: :cascade do |t|
    t.integer "form_template_id", null: false
    t.integer "form_image_id", null: false
  end

  create_table "form_templates", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.text "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forms", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.integer "form_template_id"
    t.integer "query_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_template_id"], name: "index_forms_on_form_template_id"
    t.index ["query_id"], name: "index_forms_on_query_id"
  end

  create_table "queries", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.text "sql"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "query_params", force: :cascade do |t|
    t.integer "query_id"
    t.string "name"
    t.string "default_value"
    t.string "value_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["query_id"], name: "index_query_params_on_query_id"
  end

end
