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

ActiveRecord::Schema.define(:version => 20130331210518) do

  create_table "articles", :force => true do |t|
    t.string   "name"
    t.string   "topic"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "avatars", :force => true do |t|
    t.integer  "color"
    t.string   "name"
    t.text     "description"
    t.integer  "child_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "avatars", ["child_id"], :name => "index_avatars_on_child_id"

  create_table "children", :force => true do |t|
    t.string   "name"
    t.integer  "level"
    t.integer  "points"
    t.date     "date_of_birth"
    t.float    "height"
    t.float    "weight"
    t.string   "sex"
    t.integer  "diet_score"
    t.integer  "exercise_score"
    t.integer  "diet_plan_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "children", ["diet_plan_id"], :name => "index_children_on_diet_plan_id"

  create_table "daily_diets", :force => true do |t|
    t.integer  "personal_score"
    t.integer  "veggie_eaten"
    t.integer  "prot_eaten"
    t.integer  "carbs_eaten"
    t.integer  "fruit_eaten"
    t.integer  "water_drank"
    t.integer  "sweets_eaten"
    t.integer  "child_id"
    t.integer  "diet_plan_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "daily_diets", ["child_id"], :name => "index_daily_diets_on_child_id"
  add_index "daily_diets", ["diet_plan_id"], :name => "index_daily_diets_on_diet_plan_id"

  create_table "daily_regimen", :force => true do |t|
    t.string   "focus"
    t.integer  "child_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "daily_regimen", ["child_id"], :name => "index_daily_regimen_on_child_id"

  create_table "diet_plans", :force => true do |t|
    t.integer  "veggie_serv"
    t.integer  "prot_serv"
    t.integer  "carbs_serv"
    t.integer  "fruit_serv"
    t.integer  "water_serv"
    t.integer  "sweets_serv"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "exercise_reps", :force => true do |t|
    t.integer  "reps"
    t.integer  "exercise_id"
    t.integer  "daily_regimen_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "exercise_reps", ["daily_regimen_id"], :name => "index_exercise_reps_on_daily_regimen_id"
  add_index "exercise_reps", ["exercise_id"], :name => "index_exercise_reps_on_exercise_id"

  create_table "exercises", :force => true do |t|
    t.string   "body_part"
    t.integer  "difficulty"
    t.text     "description"
    t.integer  "reps"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "features", :force => true do |t|
    t.string   "name"
    t.string   "appearance"
    t.string   "feature_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "featurings", :force => true do |t|
    t.integer  "level"
    t.integer  "avatar_id"
    t.integer  "feature_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "featurings", ["avatar_id"], :name => "index_featurings_on_avatar_id"
  add_index "featurings", ["feature_id"], :name => "index_featurings_on_feature_id"

  create_table "leaderboard_spots", :force => true do |t|
    t.integer  "place"
    t.integer  "leaderboard_id"
    t.integer  "child_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "leaderboard_spots", ["child_id"], :name => "index_leaderboard_spots_on_child_id"
  add_index "leaderboard_spots", ["leaderboard_id"], :name => "index_leaderboard_spots_on_leaderboard_id"

  create_table "leaderboards", :force => true do |t|
    t.string   "board_type"
    t.integer  "age_group"
    t.integer  "exercise_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "leaderboards", ["exercise_id"], :name => "index_leaderboards_on_exercise_id"

  create_table "monitor_child_relationships", :force => true do |t|
    t.string   "relation"
    t.float    "bonus"
    t.integer  "child_id"
    t.integer  "monitor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "monitor_child_relationships", ["child_id"], :name => "index_monitor_child_relationships_on_child_id"
  add_index "monitor_child_relationships", ["monitor_id"], :name => "index_monitor_child_relationships_on_monitor_id"

  create_table "monitor_profiles", :force => true do |t|
    t.string   "name"
    t.text     "bio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
