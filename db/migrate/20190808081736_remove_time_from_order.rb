class RemoveTimeFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :time, :datetime
  end
end
