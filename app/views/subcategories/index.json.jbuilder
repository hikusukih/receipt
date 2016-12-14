json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, :id, :parent_id, :child_id
  json.url subcategory_url(subcategory, format: :json)
end
