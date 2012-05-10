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

ActiveRecord::Schema.define(:version => 20120505201321) do

  create_table "candidates", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "portrait"
    t.string   "campaignSlogan"
    t.text     "aboutMe"
    t.text     "positions"
    t.text     "goals"
    t.text     "achievements"
    t.string   "office"
    t.integer  "race_id"
    t.string   "website"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "slug"
  end

  add_index "candidates", ["slug"], :name => "index_candidates_on_slug"

  create_table "comments", :force => true do |t|
    t.integer  "parent_id"
    t.text     "content"
    t.text     "title"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "authorable_id"
    t.string   "authorable_type"
    t.integer  "view_count"
    t.integer  "votes_count"
    t.string   "direction"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "endorsements", :force => true do |t|
    t.integer  "endorsementable_id"
    t.string   "endorsementable_type"
    t.integer  "endorsementer_id"
    t.string   "endorsementer_type"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "legislations", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "votes_count"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "opinions", :force => true do |t|
    t.string   "status"
    t.integer  "official_id"
    t.integer  "constituent_id"
    t.integer  "legislation_id"
    t.integer  "comment_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "races", ["slug"], :name => "index_races_on_slug"

  create_table "statements", :force => true do |t|
    t.integer  "official_id"
    t.text     "content"
    t.string   "type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "image_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
