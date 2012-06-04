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

ActiveRecord::Schema.define(:version => 20120604202759) do

  create_table "accommodations", :force => true do |t|
    t.integer  "guest_id"
    t.integer  "document_type_id"
    t.integer  "residence_id"
    t.date     "entry_date"
    t.date     "checkout_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "document_number"
  end

  add_index "accommodations", ["document_type_id"], :name => "index_accommodations_on_document_type_id"
  add_index "accommodations", ["guest_id"], :name => "index_accommodations_on_guest_id"
  add_index "accommodations", ["residence_id"], :name => "index_accommodations_on_residence_id"

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "document_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "guests", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "town"
    t.integer  "country_id"
    t.date     "date_of_birth"
    t.integer  "nationality_id"
    t.string   "croatian_address"
    t.string   "croatian_town"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "guests", ["country_id"], :name => "index_guests_on_country_id"
  add_index "guests", ["nationality_id"], :name => "index_guests_on_nationality_id"

  create_table "nationalities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "residences", :force => true do |t|
    t.string   "owner_name"
    t.string   "address"
    t.string   "town"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
