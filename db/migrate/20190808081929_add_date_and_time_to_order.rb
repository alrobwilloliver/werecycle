class AddDateAndTimeToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :date, :date
    add_column :orders, :time, :time
  end
end
