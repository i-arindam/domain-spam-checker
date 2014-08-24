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

ActiveRecord::Schema.define(version: 20140824095120) do

  create_table "anchor_blacklists", force: true do |t|
    t.string   "word"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "anchor_blacklists", ["word"], name: "index_anchor_blacklists_on_word", using: :btree

  create_table "domain_anchor_clouds", force: true do |t|
    t.integer  "domain_id"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "domain_anchor_clouds", ["domain_id"], name: "index_domain_anchor_clouds_on_domain_id", using: :btree

  create_table "domain_blacklists", force: true do |t|
    t.string   "word"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "domain_blacklists", ["word"], name: "index_domain_blacklists_on_word", using: :btree

  create_table "domains", force: true do |t|
    t.string   "domain_name",                          null: false
    t.float    "uda",           limit: 24
    t.float    "pda",           limit: 24
    t.string   "domain_hash"
    t.integer  "hidden_reason",            default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "domains", ["domain_hash"], name: "index_domains_on_domain_hash", using: :btree
  add_index "domains", ["hidden_reason"], name: "index_domains_on_hidden_reason", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email",                  null: false
    t.string   "password_digest"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["password_reset_token"], name: "index_users_on_password_reset_token", using: :btree

end
