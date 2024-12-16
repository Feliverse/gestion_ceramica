json.extract! product, :id, :name, :description, :price, :stock, :unit, :weight_per_box, :m2_per_box, :pieces_per_box, :created_at, :updated_at
json.url product_url(product, format: :json)
