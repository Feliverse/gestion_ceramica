json.extract! cliente, :id, :nombre, :contacto, :direccion, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
