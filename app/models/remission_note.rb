class RemissionNote < ApplicationRecord
  belongs_to :sale
  belongs_to :warehouse
  belongs_to :client
end
