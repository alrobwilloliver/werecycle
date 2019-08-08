json.story do
  json.extract! @order, :id, :time, :address, :collection_status
end
