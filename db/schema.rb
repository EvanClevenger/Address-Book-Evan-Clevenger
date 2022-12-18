

ActiveRecord::Schema[7.0].define(version: 2022_12_18_000904) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "town"
    t.string "ZIP_code"
    t.string "state"
    t.string "country"
    t.bigint "people_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["people_id"], name: "index_addresses_on_people_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "email"
    t.text "comment"
    t.bigint "people_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["people_id"], name: "index_emails_on_people_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "suffix"
    t.string "first_name"
    t.string "last_name"
    t.date "birtday"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "phone_number"
    t.text "comment"
    t.bigint "people_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["people_id"], name: "index_phones_on_people_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "people", column: "people_id"
  add_foreign_key "emails", "people", column: "people_id"
  add_foreign_key "phones", "people", column: "people_id"
end
