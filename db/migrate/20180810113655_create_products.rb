class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.string :name
    	t.text :description
    	t.integer :integer
    	t.string :image
    	
      t.timestamps
    end
  end
end
