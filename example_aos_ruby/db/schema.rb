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

ActiveRecord::Schema.define(version: 2019_05_24_164808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analytics_indicator_calcs", force: :cascade do |t|
    t.integer "starttime"
    t.integer "endtime"
    t.integer "contextid"
    t.string "sampleorign"
    t.integer "sampleid"
    t.string "indicator"
    t.decimal "value"
    t.integer "timecreated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "analytics_models_logs", force: :cascade do |t|
    t.bigint "modelid"
    t.bigint "version"
    t.string "target"
    t.text "indicators"
    t.string "timespliting"
    t.decimal "score"
    t.text "info"
    t.text "dir"
    t.bigint "timecreated"
    t.bigint "usermodified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "analytics_predict_samples", force: :cascade do |t|
    t.bigint "modelid"
    t.bigint "analysableid"
    t.string "timespliting"
    t.bigint "rangeindex"
    t.text "sampleids"
    t.bigint "timecreated"
    t.bigint "timemodified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "analytics_prediction_actions", force: :cascade do |t|
    t.bigint "predictionid"
    t.bigint "userid"
    t.string "actionname"
    t.bigint "timecreated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "analytics_train_samples", force: :cascade do |t|
    t.bigint "modelid"
    t.bigint "analysableid"
    t.string "timespliting"
    t.bigint "fileid"
    t.text "sampleids"
    t.bigint "timecreated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_associations", force: :cascade do |t|
    t.integer "contextid"
    t.integer "blogid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_externals", force: :cascade do |t|
    t.integer "userid"
    t.string "name"
    t.text "description"
    t.text "url"
    t.string "filtertags"
    t.integer "failedlastsync"
    t.integer "timemodified"
    t.integer "timefetched"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cache_filters", force: :cascade do |t|
    t.string "filter"
    t.integer "version"
    t.string "md5key"
    t.text "rawtext"
    t.integer "timemodified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cache_flags", force: :cascade do |t|
    t.string "flagtype"
    t.string "name"
    t.integer "timemodified"
    t.text "value"
    t.integer "expiry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "contextid"
    t.string "component"
    t.string "commentarea"
    t.integer "itemid"
    t.text "content"
    t.integer "format"
    t.integer "userid"
    t.integer "timecreated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "config_logs", force: :cascade do |t|
    t.integer "userid"
    t.integer "timemodified"
    t.string "plugin"
    t.string "name"
    t.text "value"
    t.text "oldvalue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "config_plugins", force: :cascade do |t|
    t.string "plugin"
    t.string "name"
    t.text "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "configs", force: :cascade do |t|
    t.string "name"
    t.text "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "editor_atto_autosaves", force: :cascade do |t|
    t.string "elementid"
    t.integer "contextid"
    t.string "pagehash"
    t.integer "userid"
    t.text "drafttext"
    t.integer "draftid"
    t.string "pageinstance"
    t.integer "timemodified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "module"
    t.integer "userid"
    t.integer "courseid"
    t.integer "groupid"
    t.integer "moduleid"
    t.integer "coursemoduleid"
    t.string "subject"
    t.text "summary"
    t.text "content"
    t.string "uniquehash"
    t.integer "rating"
    t.integer "format"
    t.integer "summaryformat"
    t.string "attachment"
    t.string "publishstate"
    t.integer "lastmodified"
    t.integer "created"
    t.integer "usermodified"
    t.bigint "blog_association_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_association_id"], name: "index_posts_on_blog_association_id"
  end

  add_foreign_key "posts", "blog_associations"
end
