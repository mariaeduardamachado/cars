class Car < ApplicationRecord

  include Visible

  validates :chave, presence: true, length: { minimum: 10 }
  validates :modelo, presence: true, length: { minimum: 10 }
  validates :marca, presence: true, length: { minimum: 10 }
  validates :ano_modelo, presence: true 
end


