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

ActiveRecord::Schema.define(version: 20180405010540) do

  create_table "equipes", force: :cascade do |t|
    t.integer  "ano"
    t.string   "nome"
    t.string   "observacoes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string   "titulo"
    t.date     "dta_evento"
    t.string   "informacoes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "financeiros", force: :cascade do |t|
    t.date     "dta_lancamento"
    t.string   "descricao"
    t.integer  "tipo_financeiro_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "nom_pessoa"
    t.date     "dta_nascimento"
    t.integer  "num_ano_inicial"
    t.string   "des_endereco"
    t.string   "num_telefone"
    t.string   "num_celular"
    t.string   "des_email"
    t.string   "observacao"
    t.integer  "tipo_pessoa"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tipo_financeiros", force: :cascade do |t|
    t.string   "des_tipo_financeiro"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "tipo_pessoas", force: :cascade do |t|
    t.string   "des_tipo_pessoa"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
