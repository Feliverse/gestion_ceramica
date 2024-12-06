class Inventario < ApplicationRecord
  belongs_to :producto
  
  #validations
  validates :producto, presence: true
  validates :area_total_m2, presence: true, numericality: { greater_than: 0 }
end
