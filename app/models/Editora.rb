#Create model for Editora
class Editora < ApplicationRecord
  has_many :livro
  has_many :autor
end