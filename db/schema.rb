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

ActiveRecord::Schema.define(:version => 20110610060901) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.string   "artist"
    t.date     "year"
    t.string   "label"
    t.integer  "tracks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "djs", :force => true do |t|
    t.string   "handle"
    t.string   "realname"
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shows", :force => true do |t|
    t.string   "name"
    t.integer  "DJ"
    t.date     "schedule"
    t.integer  "duration"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stations", :force => true do |t|
    t.string   "code"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", :force => true do |t|
    t.string   "title"
    t.integer  "album"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
