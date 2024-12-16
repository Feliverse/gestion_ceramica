json.extract! payment, :id, :sale_id, :date, :amount, :type, :method, :created_at, :updated_at
json.url payment_url(payment, format: :json)
