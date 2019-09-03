

json.my_order do
    json.extract! @order, :id, :time, :date, :address, :collection_status, :customer_phone_number, :name
    # json.customer_info @order.customer.name
end
