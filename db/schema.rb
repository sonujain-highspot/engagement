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

ActiveRecord::Schema[7.2].define(version: 2024_09_24_040247) do
  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "commentable_type", null: false
    t.integer "commentable_id", null: false
    t.integer "visibility"
    t.text "content"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "meeting_participants", force: :cascade do |t|
    t.integer "participant_id", null: false
    t.integer "meeting_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_meeting_participants_on_meeting_id"
    t.index ["participant_id"], name: "index_meeting_participants_on_participant_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "title"
    t.integer "duration"
    t.string "provider"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_meetings_on_user_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_calls", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "caller"
    t.string "receiver"
    t.integer "duration"
    t.string "provider"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phone_calls_on_user_id"
  end

  create_table "recordings", force: :cascade do |t|
    t.string "recordableable_type", null: false
    t.integer "recordableable_id", null: false
    t.integer "duration"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recordableable_type", "recordableable_id"], name: "index_recordings_on_recordableable"
  end

  create_table "transcripts", force: :cascade do |t|
    t.string "transcriptable_type", null: false
    t.integer "transcriptable_id", null: false
    t.integer "duration"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["transcriptable_type", "transcriptable_id"], name: "index_transcripts_on_transcriptable"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "users"
  add_foreign_key "meeting_participants", "meetings"
  add_foreign_key "meeting_participants", "participants"
  add_foreign_key "meetings", "users"
  add_foreign_key "phone_calls", "users"
end
