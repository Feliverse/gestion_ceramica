class InventoryEntryDetail < ApplicationRecord
  belongs_to :inventory_entry
  belongs_to :product
end
