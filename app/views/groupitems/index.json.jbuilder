json.array!(@groupitems) do |groupitem|
  json.extract! groupitem, :id, :item_id, :group_id
  json.url groupitem_url(groupitem, format: :json)
end
