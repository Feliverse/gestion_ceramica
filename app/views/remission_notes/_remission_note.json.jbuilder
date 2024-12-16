json.extract! remission_note, :id, :sale_id, :warehouse_id, :date, :client_id, :client_phone, :delivery_address, :warehouse_manager, :driver, :total_weight, :created_at, :updated_at
json.url remission_note_url(remission_note, format: :json)
