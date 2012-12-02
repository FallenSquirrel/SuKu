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

ActiveRecord::Schema.define(:version => 20121114164740) do

  create_table "bands", :force => true do |t|
    t.string   "name"
    t.text     "bandinfo"
    t.string   "email"
    t.string   "telephone"
    t.string   "homepage"
    t.string   "picture"
    t.string   "notices"
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.date     "eventdate"
    t.time     "doors"
    t.time     "showstart"
    t.string   "entryfee"
    t.text     "description"
    t.boolean  "sticky"
    t.boolean  "published"
    t.integer  "galleryset_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "gallery_pictures", :force => true do |t|
    t.string   "filename"
    t.integer  "galleryset_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "gallery_sets", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "year"
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "guestbook_entries", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "town"
    t.text     "message"
    t.integer  "refer_to"
    t.string   "posted_time"
    t.string   "datetime"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "address_street"
    t.string   "address_zip"
    t.string   "address_town"
    t.string   "telephone"
    t.string   "email"
    t.date     "entrydate"
    t.date     "birthday"
    t.string   "bankaccount_nr"
    t.string   "bankaccount_blz"
    t.string   "bankaccount_bankname"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "lastname"
    t.string   "firstname"
    t.string   "title"
    t.string   "job"
    t.string   "usertyp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
