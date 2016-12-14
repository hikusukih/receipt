json.array!(@locationtypes) do |locationtype|
  json.extract! locationtype, :id, :name, :item_id, :location_id
  json.url locationtype_url(locationtype, format: :json)
end
