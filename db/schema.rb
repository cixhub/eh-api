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

ActiveRecord::Schema[7.1].define(version: 2024_01_30_213711) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analytics", force: :cascade do |t|
    t.integer "event_views"
    t.integer "reservations_count"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_analytics_on_event_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_comments", force: :cascade do |t|
    t.text "content"
    t.bigint "event_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_comments_on_event_id"
    t.index ["user_id"], name: "index_event_comments_on_user_id"
  end

  create_table "event_images", force: :cascade do |t|
    t.string "url"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_images_on_event_id"
  end

  create_table "event_invitations", force: :cascade do |t|
    t.bigint "inviter_id"
    t.bigint "invitee_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_invitations_on_event_id"
    t.index ["invitee_id"], name: "index_event_invitations_on_invitee_id"
    t.index ["inviter_id"], name: "index_event_invitations_on_inviter_id"
  end

  create_table "event_organizers", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_organizers_on_event_id"
    t.index ["user_id"], name: "index_event_organizers_on_user_id"
  end

  create_table "event_payments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.decimal "amount", precision: 10, scale: 2
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_payments_on_event_id"
    t.index ["user_id"], name: "index_event_payments_on_user_id"
  end

  create_table "event_schedules", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_schedules_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "description"
    t.boolean "reservation", default: false
    t.integer "price"
    t.integer "capacity"
    t.integer "tickets"
    t.integer "tickets_left"
    t.datetime "date"
    t.string "location"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "avatar"
    t.string "banner"
    t.integer "category_id"
    t.string "event_type", default: "Private"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "status", default: "upcoming"
    t.string "summary"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "participant_id"
    t.boolean "attending", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "event_id", null: false
    t.string "phone_number"
    t.index ["event_id"], name: "index_participants_on_event_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.bigint "event_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_reviews_on_event_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_tags_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "phone_number"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "analytics", "events"
  add_foreign_key "event_comments", "events"
  add_foreign_key "event_comments", "users"
  add_foreign_key "event_images", "events"
  add_foreign_key "event_invitations", "events"
  add_foreign_key "event_invitations", "users", column: "invitee_id"
  add_foreign_key "event_invitations", "users", column: "inviter_id"
  add_foreign_key "event_organizers", "events"
  add_foreign_key "event_organizers", "users"
  add_foreign_key "event_payments", "events"
  add_foreign_key "event_payments", "users"
  add_foreign_key "event_schedules", "events"
  add_foreign_key "events", "categories"
  add_foreign_key "participants", "events"
  add_foreign_key "reviews", "events"
  add_foreign_key "reviews", "users"
  add_foreign_key "tags", "events"
end
