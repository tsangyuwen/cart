class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
    	t.string :shipping_status
    	t.integer :amount
    	t.integer :sn
    	t.string :phone
    	t.string :name
    	t.string :payment_status
    	t.string :address

      t.timestamps
    end
  end
end
