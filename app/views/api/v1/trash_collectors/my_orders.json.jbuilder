
json.my_orders do
  json.array! @orders do |order|
    json.extract! order, :id, :time, :address, :collection_status, :customer_phone_number
    json.collector_info order.trash_collector
    end
end

# json.KEY_NAME -> I give it a key i want to use in my wechat miniprogram
# json.array! -> extract an array of objects in a JSON array
# json.extract! -> extract the data without assigning it to a key
