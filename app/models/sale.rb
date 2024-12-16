class Sale < ApplicationRecord
  belongs_to :quotation
  belongs_to :client
end
