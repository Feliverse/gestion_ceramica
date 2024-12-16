json.extract! inventory_entry, :id, :warehouse_id, :date, :total, :created_at, :updated_at
json.url inventory_entry_url(inventory_entry, format: :json)
