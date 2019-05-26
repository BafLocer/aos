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

ActiveRecord::Schema.define(version: 2019_05_26_112541) do

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

  create_table "analytics_used_analysables", force: :cascade do |t|
    t.bigint "modelid"
    t.string "action"
    t.bigint "analysableid"
    t.bigint "timeanalysed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "analytics_used_files", force: :cascade do |t|
    t.bigint "modelid"
    t.bigint "fileid"
    t.string "action"
    t.bigint "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assign_overrides", force: :cascade do |t|
    t.bigint "assignid"
    t.bigint "groupid"
    t.bigint "userid"
    t.bigint "sortorder"
    t.bigint "allowsubmissionsfromdate"
    t.bigint "duedate"
    t.bigint "cutoffdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assign_plugin_configs", force: :cascade do |t|
    t.bigint "assignment"
    t.string "plugin"
    t.string "subtype"
    t.string "name"
    t.text "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assign_user_flags", force: :cascade do |t|
    t.bigint "userid"
    t.bigint "assignment"
    t.bigint "locked"
    t.integer "mailed"
    t.bigint "extensionduedate"
    t.string "workflowstate"
    t.bigint "allocatedmarker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assign_user_mappings", force: :cascade do |t|
    t.bigint "assignment"
    t.bigint "userid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignfeedback_comments", force: :cascade do |t|
    t.bigint "assignment"
    t.bigint "grade"
    t.text "commenttext"
    t.integer "commentformat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignfeedback_editpdf_annots", force: :cascade do |t|
    t.bigint "gradeid"
    t.bigint "pageno"
    t.bigint "x"
    t.bigint "y"
    t.bigint "endx"
    t.bigint "endy"
    t.text "path"
    t.string "type"
    t.string "colour"
    t.integer "draft"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignfeedback_editpdf_cmnts", force: :cascade do |t|
    t.bigint "gradeid"
    t.bigint "x"
    t.bigint "y"
    t.bigint "width"
    t.text "rawtext"
    t.bigint "pageno"
    t.string "colour"
    t.integer "draft"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignfeedback_editpdf_queues", force: :cascade do |t|
    t.bigint "submissionid"
    t.bigint "submissionattempt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignfeedback_editpdf_quicks", force: :cascade do |t|
    t.bigint "userid"
    t.text "rawtext"
    t.bigint "width"
    t.string "colour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignfeedback_files", force: :cascade do |t|
    t.bigint "assignment"
    t.bigint "grade"
    t.bigint "numfiles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignment_submissions", force: :cascade do |t|
    t.bigint "assignment"
    t.bigint "userid"
    t.bigint "timecreated"
    t.bigint "timemodified"
    t.bigint "numfiles"
    t.text "data1"
    t.text "data2"
    t.bigint "grade"
    t.text "submissioncomment"
    t.integer "format"
    t.bigint "teacher"
    t.bigint "timemarked"
    t.integer "mailed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignment_upgrades", force: :cascade do |t|
    t.bigint "oldcmid"
    t.bigint "oldinstance"
    t.bigint "newcmid"
    t.bigint "newinstance"
    t.bigint "timecreated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignsubmission_files", force: :cascade do |t|
    t.bigint "assignment"
    t.bigint "submission"
    t.bigint "numfiles"
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

  create_table "role_users", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "user_id", null: false
    t.json "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_role_users_on_role_id"
    t.index ["user_id"], name: "index_role_users_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", null: false
    t.string "info", null: false
    t.text "full_info", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["info"], name: "index_roles_on_info", unique: true
    t.index ["name"], name: "index_roles_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string "activation_state"
    t.string "activation_token"
    t.datetime "activation_token_expires_at"
    t.integer "failed_logins_count", default: 0
    t.datetime "lock_expires_at"
    t.string "unlock_token"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string "last_login_from_ip_address"
    t.index ["activation_token"], name: "index_users_on_activation_token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at"
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
    t.index ["unlock_token"], name: "index_users_on_unlock_token"
  end

  add_foreign_key "posts", "blog_associations"
  add_foreign_key "role_users", "roles"
  add_foreign_key "role_users", "users"
end
