json.extract! product, :id, :name, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
json.image url_for(product.image)
