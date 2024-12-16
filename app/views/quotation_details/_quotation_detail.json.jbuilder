json.extract! quotation_detail, :id, :quotation_id, :product_id, :quantity, :unit_price, :subtotal, :created_at, :updated_at
json.url quotation_detail_url(quotation_detail, format: :json)
