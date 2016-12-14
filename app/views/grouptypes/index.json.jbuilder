json.array!(@grouptypes) do |grouptype|
  json.extract! grouptype, :id, :name
  json.url grouptype_url(grouptype, format: :json)
end
