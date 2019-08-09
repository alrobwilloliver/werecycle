class AddLatitudeToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :latitude, :float
  end
end
