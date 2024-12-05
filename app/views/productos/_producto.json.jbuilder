json.extract! producto, :id, :nombre, :categoria, :descripcion, :unidades_por_caja, :area_por_caja, :precio_por_m2, :proveedor_id, :created_at, :updated_at
json.url producto_url(producto, format: :json)
