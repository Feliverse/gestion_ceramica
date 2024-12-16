json.extract! transfer_detail, :id, :transfer_id, :product_id, :quantity, :subtotal, :created_at, :updated_at
json.url transfer_detail_url(transfer_detail, format: :json)
