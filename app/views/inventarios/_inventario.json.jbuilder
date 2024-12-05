json.extract! inventario, :id, :producto_id, :cajas_completas, :piezas_sueltas, :area_total_m2, :created_at, :updated_at
json.url inventario_url(inventario, format: :json)
