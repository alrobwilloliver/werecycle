json.order do
  json.extract! @order, :time, :address, :collection_status, :customer_phone_number
end
