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

ActiveRecord::Schema.define(version: 20160118184850) do

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "cpf"
    t.text     "obs"
    t.date     "aniversario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "telefone"
    t.integer  "loja_id"
    t.string   "imagem_file_name"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.datetime "imagem_updated_at"
  end

  add_index "clientes", ["loja_id"], name: "index_clientes_on_loja_id", using: :btree

  create_table "lojas", force: true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "enderereco"
    t.string   "beirro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
