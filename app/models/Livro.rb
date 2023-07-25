#Create model for livro
class Livro < ApplicationRecord
  belongs_to :editora
  has_many :emprestimo
  has_many :livro_autor
  has_many :autor, through: :livro_autor
  
end