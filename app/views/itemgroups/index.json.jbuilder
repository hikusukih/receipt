json.array!(@itemgroups) do |itemgroup|
  json.extract! itemgroup, :id, :item_id, :group_id, :grouptype_id
  json.url itemgroup_url(itemgroup, format: :json)
end
