json.comment do
  json.extract! @order, :trash_collector_id, :collection_status
end
