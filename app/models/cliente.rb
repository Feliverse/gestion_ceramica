class Cliente < ApplicationRecord
  # Validations
  validates :nombre, presence: true, length: { maximum: 50, minimum: 3 }
  validates :contacto, presence: true, length: { maximum: 12, minimum: 7 }
  validates :direccion, presence: true, length: { maximum: 100, minimum: 10 }
end
