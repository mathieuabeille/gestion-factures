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

ActiveRecord::Schema.define(version: 20170925103710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "contrats", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "adresse"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.date     "startdate"
    t.string   "societe"
    t.string   "nsiret"
    t.string   "cnaf"
    t.string   "sadresse"
    t.string   "scposte"
    t.string   "sexerepresentant"
    t.string   "typesociete"
    t.string   "nomrepresentant"
    t.string   "prenomrepresentant"
    t.string   "posterepresentant"
    t.string   "numeroaffiliation"
    t.string   "regionurssaf"
    t.string   "adresseurssaf"
    t.string   "sville"
    t.string   "empcivilite"
    t.string   "birthplace"
    t.date     "birthdate"
    t.string   "nationalite"
    t.date     "permissejourexp"
    t.date     "permissejourdate"
    t.string   "permissejournum"
    t.string   "permissejourloc"
    t.string   "nsecu"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "entite"
    t.string   "specifique_id"
    t.string   "fournisseur"
    t.string   "marque"
    t.string   "nom"
    t.string   "description"
    t.string   "serial"
    t.float    "value"
    t.string   "duree_garantie"
    t.string   "emplacement"
    t.date     "date_achat"
    t.date     "fin_amortissement"
    t.string   "numero_comptabilite"
    t.string   "processeur"
    t.string   "RAM"
    t.string   "memoire"
    t.string   "systeme_exploitation"
    t.string   "numero_OS"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["user_id"], name: "index_invoices_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.text     "auteur"
    t.integer  "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_reviews_on_invoice_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "invoices", "users"
  add_foreign_key "reviews", "invoices"
end
