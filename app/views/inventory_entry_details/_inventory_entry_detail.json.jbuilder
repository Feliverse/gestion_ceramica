json.extract! inventory_entry_detail, :id, :inventory_entry_id, :product_id, :quantity, :subtotal, :created_at, :updated_at
json.url inventory_entry_detail_url(inventory_entry_detail, format: :json)
