class AddTrashCollectorToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :trash_collector, foreign_key: true
  end
end
