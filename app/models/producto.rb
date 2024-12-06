class Producto < ApplicationRecord
  belongs_to :proveedor

  validates :nombre, presence: true 
  validates :uso, presence: true 
  validates :formato, presence: true
end
