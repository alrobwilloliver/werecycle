json.orders do
  json.array! @orders do |order|
    json.extract! order, :id, :time, :address, :collection_status
  end
end
