class AddOpenidToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :open_id, :string
  end
end
