json.story do
  json.extract! @order, :id, :time, :date, :address, :collection_status, :customer_phone_number
end
