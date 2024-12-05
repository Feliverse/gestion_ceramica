json.extract! orden_compra, :id, :fecha, :proveedor_id, :total, :estado, :created_at, :updated_at
json.url orden_compra_url(orden_compra, format: :json)
