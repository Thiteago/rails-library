class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :livro do |t|
      t.string :titulo
      t.integer :quantidade
      t.string :genero

      t.references :autor, foreign_key: true
      t.references :editora, foreign_key: true
      t.references :emprestimo, foreign_key: true
    end

    create_table :autor do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :nacionalidade
      t.string :celular
      t.string :email
    end

    create_table :editora do |t|
      t.string :nome
      t.string :cnpj
      t.string :email

      t.references :autor, foreign_key: true
      t.references :livro, foreign_key: true
    end

    create_table :cliente do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :celular
      t.string :email
      
      t.references :emprestimo, foreign_key: true
    end

    create_table :emprestimo do |t|
      t.date :data_emprestimo
      t.date :data_devolucao
      t.integer :quantidade_alugada
      t.string :status

      t.references :cliente, foreign_key: true
      t.references :livro, foreign_key: true
    end
  end
end
