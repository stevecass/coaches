# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150202185723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer "commentable_id"
    t.string  "commentable_type"
    t.integer "user_id"
    t.string  "body"
  end

  add_index "comments", ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.integer "manager_emp_id"
    t.integer "department_id"
    t.string  "name"
    t.date    "hired_on"
  end

  create_table "photos", force: :cascade do |t|
    t.integer "post_id"
    t.string  "caption"
    t.string  "photo_url"
  end

  add_index "photos", ["post_id"], name: "index_photos_on_post_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string  "title"
    t.text    "body"
    t.string  "publication_status"
    t.date    "published_on"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "publications", force: :cascade do |t|
    t.string "title"
    t.string "frequency"
    t.string "imprint"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "publication_id"
    t.date    "start_date"
    t.date    "end_date"
    t.string  "payment_status"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.date   "dob"
  end

end
