class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.string :type_of
      t.integer :amount
      t.datetime :expiration

      t.timestamps
    end
  end
end
