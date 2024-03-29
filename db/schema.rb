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

ActiveRecord::Schema.define(version: 20140503004151) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "delayed_jobs", force: true do |t|
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

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "facebook_statuses", force: true do |t|
    t.integer  "user_id"
    t.string   "approval_status"
    t.string   "title"
    t.text     "facebook_status"
    t.string   "author"
    t.string   "content_platform"
    t.string   "content_type"
    t.text     "author_notes"
    t.text     "editor_notes"
    t.text     "keyword_checklist"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facebook_statuses", ["user_id"], name: "index_facebook_statuses_on_user_id"

  create_table "instagram_images", force: true do |t|
    t.integer  "user_id"
    t.binary   "image"
    t.text     "approval_status"
    t.string   "title"
    t.text     "social_snippet"
    t.string   "author"
    t.string   "content_platform"
    t.string   "content_type"
    t.text     "associated_text"
    t.text     "author_notes"
    t.text     "editor_notes"
    t.text     "keyword_checklist"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "instagram_images", ["user_id"], name: "index_instagram_images_on_user_id"

  create_table "pins", force: true do |t|
    t.string   "approval_status"
    t.string   "author"
    t.integer  "user_id"
    t.string   "url"
    t.string   "title"
    t.text     "social_snippet"
    t.string   "content_platform"
    t.string   "content_type"
    t.text     "description"
    t.text     "author_notes"
    t.text     "editor_notes"
    t.text     "keyword_checklist"
    t.binary   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pins", ["user_id"], name: "index_pins_on_user_id"

  create_table "tweets", force: true do |t|
    t.integer  "user_id"
    t.text     "tweet"
    t.string   "approval_status"
    t.string   "title"
    t.string   "author"
    t.string   "content_platform"
    t.string   "content_type"
    t.binary   "image"
    t.string   "url"
    t.text     "author_notes"
    t.text     "editor_notes"
    t.text     "keyword_checklist"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tweets", ["user_id"], name: "index_tweets_on_user_id"

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.binary   "user_photo"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

  create_table "votes", force: true do |t|
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

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

  create_table "wordpress_blog_posts", force: true do |t|
    t.integer  "user_id"
    t.text     "blog_post"
    t.binary   "featured_image"
    t.string   "approval_status"
    t.text     "social_snippet"
    t.string   "author"
    t.string   "content_platform"
    t.string   "content_type"
    t.text     "author_notes"
    t.text     "editor_notes"
    t.text     "keyword_checklist"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wordpress_blog_posts", ["user_id"], name: "index_wordpress_blog_posts_on_user_id"

end
