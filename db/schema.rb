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

ActiveRecord::Schema.define(:version => 20101018143729) do

  create_table "castes", :force => true do |t|
    t.string   "caste"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcasts", :force => true do |t|
    t.string   "subcast"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.integer  "dob"
    t.text     "address"
    t.string   "father"
    t.string   "mother"
    t.string   "father_job"
    t.string   "mother_job"
    t.integer  "siblings"
    t.string   "mothertongue"
    t.integer  "cast"
    t.integer  "subcast"
    t.string   "job"
    t.integer  "salary"
    t.integer  "status"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "complexion"
    t.integer  "built"
    t.integer  "religion"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "sex"
    t.date     "dateofbirth"
    t.integer  "search_religion"
    t.integer  "search_cast"
    t.integer  "search_subcast"
    t.integer  "search_sex"
    t.integer  "search_job"
    t.integer  "search_mothertongue"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
