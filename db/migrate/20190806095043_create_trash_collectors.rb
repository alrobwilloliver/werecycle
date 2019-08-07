class CreateTrashCollectors < ActiveRecord::Migration[5.2]
  def change
    create_table :trash_collectors do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
