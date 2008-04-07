# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 2) do

  create_table "ligafuts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.integer  "team_id"
    t.string   "surname",        :limit => 20
    t.string   "firstname",      :limit => 20
    t.integer  "poste"
    t.integer  "shirt_number"
    t.integer  "country_id"
    t.datetime "in_club_since"
    t.datetime "date_of_birth"
    t.boolean  "on_loan"
    t.text     "notes"
    t.string   "previous_club",  :limit => 50
    t.string   "address1",       :limit => 50
    t.string   "address2",       :limit => 50
    t.string   "city",           :limit => 50
    t.string   "post_code",      :limit => 50
    t.string   "phone1",         :limit => 50
    t.string   "phone2",         :limit => 50
    t.string   "mobile_phone",   :limit => 50
    t.string   "email",          :limit => 50
    t.string   "custom_text1",   :limit => 50
    t.string   "custom_text2",   :limit => 50
    t.integer  "custom_number1"
    t.integer  "custom_number2"
    t.boolean  "supplent",                     :default => false
    t.boolean  "enabled",                      :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string  "fullname",             :limit => 75
    t.string  "shortname",            :limit => 15
    t.string  "symbol",               :limit => 3
    t.string  "manager",              :limit => 40
    t.string  "president",            :limit => 40
    t.string  "address",              :limit => 70
    t.string  "post_code",            :limit => 15
    t.string  "city",                 :limit => 50
    t.string  "fax",                  :limit => 25
    t.string  "phone",                :limit => 25
    t.string  "stadium_name",         :limit => 40
    t.integer "stadium_capacity",                   :default => 0
    t.text    "stadium_address"
    t.text    "stadium_directions"
    t.string  "contact_person_name",  :limit => 50
    t.string  "contact_person_phone", :limit => 50
    t.string  "contact_person_email", :limit => 50
    t.integer "points_to_add",                      :default => 0
    t.integer "points_to_remove",                   :default => 0
    t.integer "goals_to_add",                       :default => 0
    t.integer "goals_to_remove",                    :default => 0
    t.integer "ranking",                            :default => 0
    t.string  "custom_text1",         :limit => 50
    t.integer "yearly_budget"
    t.integer "total_games_win",                    :default => 0
    t.integer "total_games_lose",                   :default => 0
    t.integer "total_games_draw",                   :default => 0
    t.string  "team_logo_file",       :limit => 75, :default => "nodisp.png"
    t.boolean "enabled",                            :default => true
    t.integer "tgroup",                             :default => 0
  end

end
