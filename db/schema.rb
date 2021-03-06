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

ActiveRecord::Schema.define(:version => 20120627040253) do

  create_table "documents", :force => true do |t|
    t.string   "filename"
    t.string   "documenttype"
    t.string   "fund"
    t.string   "month"
    t.integer  "year"
    t.string   "group"
    t.string   "investmentcat"
    t.string   "url"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "documents_firms", :id => false, :force => true do |t|
    t.integer "document_id"
    t.integer "firm_id"
  end

  add_index "documents_firms", ["document_id", "firm_id"], :name => "index_documents_firms_on_document_id_and_firm_id"

  create_table "firms", :force => true do |t|
    t.string   "firm_name"
    t.string   "short_name"
    t.string   "firm_type"
    t.integer  "phone"
    t.integer  "fax"
    t.integer  "emergency_phone", :limit => 255
    t.string   "website"
    t.string   "status"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "firms_notes", :id => false, :force => true do |t|
    t.integer "firm_id"
    t.integer "note_id"
  end

  add_index "firms_notes", ["firm_id", "note_id"], :name => "index_firms_notes_on_firm_id_and_note_id"

  create_table "notes", :force => true do |t|
    t.string   "title"
    t.string   "summary"
    t.text     "content"
    t.string   "format"
    t.string   "meeting_type"
    t.datetime "meeting_time"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
