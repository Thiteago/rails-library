#Create model for Cliente
class Cliente < ApplicationRecord
  has_many :emprestimo
end