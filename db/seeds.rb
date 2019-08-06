# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.delete_all

customer_one = Customer.create(name: 'Zoe')

order_one = Order.create(time: '2019-08-15, 16:30', address: '9 High Street', collection_status: 'collected', customer_phone_number: 15215937852, customer_id: customer_one.id)

customer_two = Customer.create(name: 'John')

order_two = Order.create(time: '2019-08-16, 15:30', address: '10 Low Street', collection_status: 'order available to take', customer_phone_number: 8888888, customer_id: customer_two.id)

customer_three = Customer.create(name: 'Alan')

order_three = Order.create(time: '2019-08-20, 17:30', address: '10 Anonymous Street', collection_status: 'order available to take', customer_phone_number: 8888888, customer_id: customer_three.id)

customer_four = Customer.create(name: 'Augusto')

order_four = Order.create(time: '2019-08-30, 8:30', address: '10 Known Street', collection_status: 'order taken', customer_phone_number: 111111111, customer_id: customer_four.id)

trash_collector_one = TrashCollector.create(name: 'ZoeNumberTWO', phone_number: '911')

puts order_one.inspect
puts order_two.inspect
puts order_three.inspect
puts order_four.inspect

puts trash_collector_one.inspect
