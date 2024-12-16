json.extract! receipt, :id, :payment_id, :date, :amount, :description, :created_at, :updated_at
json.url receipt_url(receipt, format: :json)
