class CreateCollectors < ActiveRecord::Migration[5.2]
  def change
    create_table :collectors do |t|
      t.string :name
      t.integer :phone_number

      t.timestamps
    end
  end
end
