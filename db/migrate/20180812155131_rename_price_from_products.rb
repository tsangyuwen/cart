class RenamePriceFromProducts < ActiveRecord::Migration[5.1]
  def change
  	rename_column :products, :integer, :price
  end
end
