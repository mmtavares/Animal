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

ActiveRecord::Schema.define(:version => 20120301134752) do

  create_table "acusas", :force => true do |t|
    t.string   "motivo"
    t.string   "estadosaude"
    t.integer  "instituicao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "acusas", ["instituicao_id"], :name => "index_acusas_on_instituicao_id"

  create_table "agendas", :force => true do |t|
    t.string   "nome"
    t.string   "hora"
    t.string   "data"
    t.string   "nomeinstituicao"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "animals", :force => true do |t|
    t.string   "especie"
    t.string   "raca"
    t.string   "situacao"
    t.string   "sexo"
    t.string   "descricao"
    t.integer  "instituicao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "animals", ["instituicao_id"], :name => "index_animals_on_instituicao_id"

  create_table "doacaos", :force => true do |t|
    t.string   "nome"
    t.string   "rg"
    t.string   "cpf"
    t.string   "telefone"
    t.string   "email"
    t.string   "idade"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "rua"
    t.string   "nomeanimal"
    t.integer  "instituicao_id"
    t.integer  "agenda_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "doacaos", ["agenda_id"], :name => "index_doacaos_on_agenda_id"
  add_index "doacaos", ["instituicao_id"], :name => "index_doacaos_on_instituicao_id"

  create_table "instituicaos", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "uf"
    t.string   "bairro"
    t.string   "rua"
    t.string   "cep"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
