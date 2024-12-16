json.extract! sale, :id, :quotation_id, :client_id, :date, :total, :payment_status, :client_name, :client_ci_nit, :created_at, :updated_at
json.url sale_url(sale, format: :json)
