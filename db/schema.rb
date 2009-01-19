# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090118225144) do

  create_table "page_versions", :force => true do |t|
    t.integer  "page_id"
    t.integer  "version"
    t.string   "title"
    t.text     "body"
    t.datetime "updated_at"
    t.string   "edit_summary"
  end

  add_index "page_versions", ["page_id"], :name => "index_page_versions_on_page_id"

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "edit_summary"
    t.integer  "version",      :default => 1
  end

end
