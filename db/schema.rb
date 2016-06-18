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

ActiveRecord::Schema.define(version: 20160618182128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "nombre"
    t.string   "desc_art"
    t.string   "desc_art1"
    t.string   "desc_art2"
    t.integer  "arts_disp"
    t.decimal  "prcio_unit"
    t.integer  "tipo_art"
    t.string   "moneda_art"
    t.decimal  "apartar"
    t.integer  "orden"
    t.integer  "disp_camara"
    t.integer  "disp_almacen"
    t.integer  "disp_movila"
    t.integer  "disp_movilb"
    t.integer  "disp_movilc"
    t.integer  "disp_movild"
    t.integer  "disp_movilfijo"
    t.integer  "disp_minimovil"
    t.integer  "disp_micromovil"
    t.integer  "disp_movilx"
    t.integer  "atributo"
    t.string   "marca"
    t.integer  "catalog_id"
  end

  add_index "articles", ["catalog_id"], name: "index_articles_on_catalog_id", using: :btree

  create_table "catalogs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "nombre"
    t.string   "desc"
    t.datetime "fecha"
    t.decimal  "tipo_camb"
  end

  create_table "clients", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "nombre"
    t.string   "a_paterno"
    t.string   "a_materno"
    t.string   "rfc",        limit: 12
    t.boolean  "fisica"
    t.string   "domicilio"
    t.string   "entidad"
    t.string   "cp",         limit: 5
    t.decimal  "saldo"
    t.string   "seguro"
    t.string   "observ"
    t.string   "consid_cte"
    t.string   "equipo"
    t.string   "web"
    t.string   "activo"
    t.datetime "fecha_ing"
  end

  create_table "correos", force: :cascade do |t|
    t.string  "correo"
    t.string  "descripcion"
    t.integer "client_id"
  end

  add_index "correos", ["client_id"], name: "index_correos_on_client_id", using: :btree

  create_table "existences", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "article_id"
  end

  add_index "existences", ["article_id"], name: "index_existences_on_article_id", using: :btree

  create_table "telefonos", force: :cascade do |t|
    t.string   "telefono"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  add_index "telefonos", ["client_id"], name: "index_telefonos_on_client_id", using: :btree

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
    t.string   "nombre"
    t.string   "a_paterno"
    t.string   "a_materno"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "articles", "catalogs"
  add_foreign_key "correos", "clients"
  add_foreign_key "existences", "articles"
  add_foreign_key "telefonos", "clients"
end
