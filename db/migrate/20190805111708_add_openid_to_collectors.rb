class AddOpenidToCollectors < ActiveRecord::Migration[5.2]
  def change
    add_column :collectors, :open_id, :string
  end
end
