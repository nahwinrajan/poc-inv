json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :quantity, :price, :image_url
  json.url product_url(product, format: :json)
end
