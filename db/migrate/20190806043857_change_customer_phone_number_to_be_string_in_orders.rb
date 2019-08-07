class ChangeCustomerPhoneNumberToBeStringInOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :customer_phone_number, :string
  end
end
