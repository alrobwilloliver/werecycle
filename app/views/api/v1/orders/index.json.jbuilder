json.orders do
  json.array! @orders do |order|
    json.extract! order, :id, :time, :address, :collection_status, :customer_phone_number, :date, :customer_id
    json.customer_info order.customer.name
  end
end
