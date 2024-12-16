json.extract! sale_detail, :id, :sale_id, :product_id, :product_name, :quantity, :unit, :unit_price, :total_price, :total_price_literal, :boxes, :total_weight, :created_at, :updated_at
json.url sale_detail_url(sale_detail, format: :json)
