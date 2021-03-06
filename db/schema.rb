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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120104035031) do

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "micropost_id"
    t.string   "content"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "direct_messages", :force => true do |t|
    t.integer  "to_id"
    t.integer  "from_id"
    t.text     "content"
    t.boolean  "unread"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "microposts", :force => true do |t|
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "note_images", :force => true do |t|
    t.integer  "note_id"
    t.string   "title"
    t.string   "image"
    t.string   "pdf"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notes", :force => true do |t|
    t.string   "title"
    t.string   "department"
    t.integer  "grade"
    t.string   "teacher"
    t.string   "term"
    t.integer  "year"
    t.string   "kind"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.integer  "note_id"
    t.integer  "user_id"
    t.text     "content"
    t.string   "attachment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "grade"
    t.string   "avatar"
    t.string   "url"
    t.text     "bio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "readings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "readed_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "student_id"
    t.string   "role"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
