json.array!(@deals) do |deal|
  json.extract! deal, :id, :location, :price, :endDate
  json.url deal_url(deal, format: :json)
end
