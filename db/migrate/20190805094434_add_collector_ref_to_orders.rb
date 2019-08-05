class AddCollectorRefToOrders < ActiveRecord::Migration[5.2]
  def change
  	add_reference :orders, :collector, foreign_key: true
  end
end
