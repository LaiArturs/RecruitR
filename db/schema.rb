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

ActiveRecord::Schema.define(version: 2019_09_17_165516) do

  create_table "applicants", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position_id"
    t.integer "recruiter_id"
    t.datetime "meeting"
    t.index ["position_id"], name: "index_applicants_on_position_id"
    t.index ["recruiter_id"], name: "index_applicants_on_recruiter_id"
  end

  create_table "applicants_skills", id: false, force: :cascade do |t|
    t.integer "applicant_id", null: false
    t.integer "skill_id", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions_skills", id: false, force: :cascade do |t|
    t.integer "position_id", null: false
    t.integer "skill_id", null: false
  end

  create_table "positions_traits", id: false, force: :cascade do |t|
    t.integer "position_id", null: false
    t.integer "trait_id", null: false
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recruiters_skills", id: false, force: :cascade do |t|
    t.integer "recruiter_id", null: false
    t.integer "skill_id", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trait_scores", force: :cascade do |t|
    t.integer "score"
    t.integer "trait_id"
    t.integer "applicant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicant_id"], name: "index_trait_scores_on_applicant_id"
    t.index ["trait_id"], name: "index_trait_scores_on_trait_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
