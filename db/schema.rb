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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170315190232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "picture"
    t.string   "title"
    t.string   "summary"
    t.text     "description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "category"
    t.string   "team"
    t.string   "source"
    t.string   "league"
    t.string   "team_second"
    t.string   "image_alt"
    t.boolean  "main",        default: false
    t.string   "slug"
  end

  add_index "articles", ["slug"], name: "index_articles_on_slug", using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "donations", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email"
    t.text     "message"
    t.text     "notification_params"
    t.string   "status"
    t.string   "transaction_id"
    t.datetime "purchased_at"
    t.integer  "amount"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string   "email"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fixtures", force: :cascade do |t|
    t.string   "league"
    t.text     "fixture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "matches", force: :cascade do |t|
    t.string   "selfFixtures"
    t.string   "competition"
    t.string   "homeTeamHref"
    t.string   "awayTeamHref"
    t.datetime "date"
    t.string   "status"
    t.string   "matchday"
    t.string   "homeTeamName"
    t.string   "awayTeamName"
    t.string   "goalsHomeTeam"
    t.string   "goalsAwayTeam"
    t.string   "league"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "onlains", force: :cascade do |t|
    t.string   "sopcast"
    t.string   "sopcast_quality"
    t.string   "acestream"
    t.string   "acestream_quality"
    t.string   "video_first"
    t.string   "video_second"
    t.string   "video_third"
    t.string   "video_fourth"
    t.string   "home_team"
    t.string   "away_team"
    t.datetime "date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "picture"
    t.text     "description"
    t.integer  "article_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image_alt"
  end

  add_index "pictures", ["article_id"], name: "index_pictures_on_article_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.integer  "team_id"
    t.string   "name"
    t.string   "position"
    t.string   "number"
    t.string   "date_of_birth"
    t.string   "nationality"
    t.string   "contract_until"
    t.string   "market_value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "slug"
  end

  add_index "players", ["slug"], name: "index_players_on_slug", using: :btree
  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "tables", force: :cascade do |t|
    t.string   "league"
    t.text     "data"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "position"
    t.string   "teamName"
    t.string   "crestURI"
    t.string   "playedGames"
    t.integer  "points"
    t.string   "goals"
    t.string   "goalsAgainst"
    t.string   "goalDifference"
    t.string   "wins"
    t.string   "draws"
    t.string   "losses"
    t.string   "group"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "video_id"
    t.integer  "article_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["article_id"], name: "index_taggings_on_article_id", using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["video_id"], name: "index_taggings_on_video_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "short_name"
    t.string   "market_value"
    t.string   "fixtures"
    t.string   "icon_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "league"
    t.string   "slug"
  end

  add_index "teams", ["slug"], name: "index_teams_on_slug", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "avatar"
    t.string   "username"
    t.string   "team"
    t.string   "avatarc"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "picture"
    t.string   "youtube_link"
    t.text     "code"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "league"
    t.string   "team_first"
    t.string   "team_second"
    t.string   "image_alt"
    t.string   "time"
    t.string   "slug"
    t.string   "category"
  end

  add_index "videos", ["slug"], name: "index_videos_on_slug", using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

  add_foreign_key "comments", "users"
  add_foreign_key "pictures", "articles"
  add_foreign_key "players", "teams"
  add_foreign_key "taggings", "articles"
  add_foreign_key "taggings", "tags"
  add_foreign_key "taggings", "videos"
end
