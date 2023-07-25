# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_14_165522) do
  create_table "autor", force: :cascade do |t|
    t.string "nome"
    t.date "data_nascimento"
    t.string "nacionalidade"
    t.string "celular"
    t.string "email"
  end

  create_table "cliente", force: :cascade do |t|
    t.string "nome"
    t.date "data_nascimento"
    t.string "celular"
    t.string "email"
    t.integer "emprestimo_id"
    t.index ["emprestimo_id"], name: "index_cliente_on_emprestimo_id"
  end

  create_table "editora", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "email"
    t.integer "autor_id"
    t.integer "livro_id"
    t.index ["autor_id"], name: "index_editora_on_autor_id"
    t.index ["livro_id"], name: "index_editora_on_livro_id"
  end

  create_table "emprestimo", force: :cascade do |t|
    t.date "data_emprestimo"
    t.date "data_devolucao"
    t.integer "quantidade_alugada"
    t.string "status"
    t.integer "cliente_id"
    t.integer "livro_id"
    t.index ["cliente_id"], name: "index_emprestimo_on_cliente_id"
    t.index ["livro_id"], name: "index_emprestimo_on_livro_id"
  end

  create_table "livro", force: :cascade do |t|
    t.string "titulo"
    t.integer "quantidade"
    t.string "genero"
    t.integer "autor_id"
    t.integer "editora_id"
    t.integer "emprestimo_id"
    t.index ["autor_id"], name: "index_livro_on_autor_id"
    t.index ["editora_id"], name: "index_livro_on_editora_id"
    t.index ["emprestimo_id"], name: "index_livro_on_emprestimo_id"
  end

  add_foreign_key "cliente", "emprestimos"
  add_foreign_key "editora", "autors"
  add_foreign_key "editora", "livros"
  add_foreign_key "emprestimo", "clientes"
  add_foreign_key "emprestimo", "livros"
  add_foreign_key "livro", "autors"
  add_foreign_key "livro", "editoras"
  add_foreign_key "livro", "emprestimos"
end
