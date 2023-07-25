#Create model for Autor
class Autores < ApplicationRecord
  has_many :livro_autor
  has_many :livro, through: :livro_autor
  belongs_to :editora
end