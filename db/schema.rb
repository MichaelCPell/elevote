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

ActiveRecord::Schema.define(:version => 20120207013520) do

  create_table "answers", :force => true do |t|
    t.string   "name"
    t.integer  "official_id"
    t.integer  "question_id"
    t.integer  "office_question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "parent_id"
    t.text     "content"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "authorable_id"
    t.string   "authorable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "constituents", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "counties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", :force => true do |t|
    t.string   "category"
    t.string   "number"
    t.integer  "office_id"
    t.string   "gpe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts_precincts", :id => false, :force => true do |t|
    t.integer "district_id"
    t.integer "precinct_id"
  end

  create_table "legislations", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "office_questions", :force => true do |t|
    t.string   "name"
    t.integer  "office_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "officials", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "state"
    t.string   "racename"
    t.integer  "office_id"
    t.integer  "district_id"
    t.integer  "office_question_id"
    t.string   "email"
    t.string   "password_digest"
    t.string   "portrait"
    t.string   "image1"
    t.string   "image2"
    t.string   "campaignSlogan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opinions", :force => true do |t|
    t.string   "status"
    t.integer  "official_id"
    t.integer  "legislation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "precincts", :force => true do |t|
    t.string   "name"
    t.integer  "county_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
