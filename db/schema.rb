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

ActiveRecord::Schema.define(:version => 20121023005458) do

  create_table "book_references", :force => true do |t|
    t.integer  "user_id"
    t.string   "autor"
    t.string   "titulo"
    t.integer  "anno"
    t.string   "ciudad"
    t.string   "editorial"
    t.integer  "paginas"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "book_references", ["user_id"], :name => "index_book_references_on_user_id"

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "web_references", :force => true do |t|
    t.integer  "user_id"
    t.string   "autor"
    t.string   "sitio"
    t.integer  "anno"
    t.integer  "mes"
    t.integer  "dia"
    t.integer  "annoconsulta"
    t.integer  "mesconsulta"
    t.integer  "diaconsulta"
    t.string   "url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "web_references", ["user_id"], :name => "index_web_references_on_user_id"

end
