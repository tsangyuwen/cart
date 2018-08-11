class CreateCartCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_cars do |t|
    
      t.timestamps
    end
  end
end
