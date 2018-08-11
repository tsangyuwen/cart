class AddRelation < ActiveRecord::Migration[5.1]
  def change
  	add_column :orders, :user_id, :integer
  	add_column :payments, :order_id, :integer
  	add_column :order_items, :order_id, :integer
  	add_column :order_items, :product_id, :integer
  end
end
