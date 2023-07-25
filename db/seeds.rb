# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


autor = Autores.create(
  nome: "J. K. Rowling",
  nacionalidade: "Inglesa",
  data_nascimento: "31/07/1965",
  celular: "(11) 99999-9999",
  email: "jk@gmail.com"
)

editora = Editora.create(
  nome: "Rocco",
  cnpj: "00.000.000/0000-00",
  email: "rocco@gmail.com",
  autor_id: autor.id,
)

livro = Livro.create(
  titulo: "Harry Potter e a Pedra Filosofal",
  quantidade: 10,
  genero: "Fantasia",
  autor_id: autor.id,
  editora_id: editora.id
)

emprestimo = Emprestimo.create(
  data_emprestimo: "01/01/2021",
  data_devolucao: "01/02/2021",
  quantidade_alugada: 1,
  status: "Emprestado",
  cliente_id: 1,
  livro_id: livro.id
)

cliente = Cliente.create(
  nome: "João",
  data_nascimento: "01/01/2000",
  celular: "(11) 99999-9999",
  email: "joao@gmail.com",
  emprestimo_id: emprestimo.id
)
