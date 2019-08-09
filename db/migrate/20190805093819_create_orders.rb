class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :time
      t.string :address
      t.string :collection_status
      t.integer :customer_phone_number
      
      t.timestamps
    end
  end

end
