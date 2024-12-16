json.extract! client, :id, :name, :address, :phone, :email, :ci_nit, :created_at, :updated_at
json.url client_url(client, format: :json)
