class RemoveCollectorFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_reference :orders, :collector, foreign_key: true
  end
end
