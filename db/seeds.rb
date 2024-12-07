# Limpia los datos existentes en el orden correcto
Ventum.destroy_all
Inventario.destroy_all
Producto.destroy_all
OrdenCompra.destroy_all
Proveedor.destroy_all
Cliente.destroy_all

# Crear Proveedores
proveedor1 = Proveedor.create!(nombre: 'Proveedor A', contacto: 'contactoA@empresa.com', direccion: 'Calle 123')
proveedor2 = Proveedor.create!(nombre: 'Proveedor B', contacto: 'contactoB@empresa.com', direccion: 'Avenida 456')

# Crear Productos
producto1 = Producto.create!(
  nombre: 'Cerámica Blanca', 
  categoria: 'Cerámica', 
  descripcion: 'Cerámica para piso', 
  unidades_por_caja: 10, 
  area_por_caja: 1.5, 
  precio_por_m2: 20.0, 
  uso: 'piso', 
  formato: '30x30', 
  proveedor: proveedor1
)
producto2 = Producto.create!(
  nombre: 'Porcelanato Gris', 
  categoria: 'Porcelanato', 
  descripcion: 'Porcelanato para pared', 
  unidades_por_caja: 8, 
  area_por_caja: 2.0, 
  precio_por_m2: 25.0, 
  uso: 'pared', 
  formato: '60x60', 
  proveedor: proveedor2
)
producto3 = Producto.create!(
  nombre: 'Grifería de Lujo', 
  categoria: 'Grifería', 
  descripcion: 'Grifería cromada para baño', 
  unidades_por_caja: 0, 
  area_por_caja: 0, 
  precio_por_m2: 0, 
  uso: 'unidad', 
  formato: 'unidad', 
  proveedor: proveedor1
)

# Crear Clientes
cliente1 = Cliente.create!(nombre: 'Cliente 1', contacto: 'cliente1@correo.com', direccion: 'Calle Falsa 123')
cliente2 = Cliente.create!(nombre: 'Cliente 2', contacto: 'cliente2@correo.com', direccion: 'Avenida Siempre Viva 456')

# Crear Órdenes de Compra
orden_compra1 = OrdenCompra.create!(
  fecha: Date.today, 
  proveedor: proveedor1, 
  total: producto1.precio_por_m2 * 15, 
  estado: 'completada'
)
orden_compra2 = OrdenCompra.create!(
  fecha: Date.today, 
  proveedor: proveedor2, 
  total: producto2.precio_por_m2 * 10, 
  estado: 'completada'
)

# Actualizar Inventario
Inventario.create!(
  producto: producto1, 
  cajas_completas: 10, 
  piezas_sueltas: 5, 
  area_total_m2: (producto1.area_por_caja * 10) + (producto1.area_por_caja / 2)
)
Inventario.create!(
  producto: producto2, 
  cajas_completas: 10, 
  piezas_sueltas: 0, 
  area_total_m2: producto2.area_por_caja * 10
)
Inventario.create!(
  producto: producto3, 
  cajas_completas: 0, 
  piezas_sueltas: 0, 
  area_total_m2: 0.01 # Grifería se maneja por unidad, ponemos un valor mínimo para evitar el error de validación
)

# Crear Ventas
Ventum.create!(
  fecha: Date.today, 
  cliente: cliente1, 
  producto: producto1, 
  cantidad_m2: 15.0, 
  piezas_vendidas: 10, 
  cajas_vendidas: 1, 
  total: producto1.precio_por_m2 * 15
)
Ventum.create!(
  fecha: Date.today, 
  cliente: cliente2, 
  producto: producto3, 
  cantidad_m2: 0, 
  piezas_vendidas: 0, 
  cajas_vendidas: 0, 
  total: producto3.precio_por_m2 * 2
)
