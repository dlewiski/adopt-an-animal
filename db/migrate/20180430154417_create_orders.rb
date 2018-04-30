class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :status
      t.decimal :totalPrice
      t.integer :orderNumber
      t.decimal :shipping
      t.integer :account_id

      t.timestamps
    end
  end
end
