class Product < ApplicationRecord
	has_many :cart_items, dependent: :destroy
	has_many :cart_cars, through: :cart_items

	has_many :order_items, dependent: :destroy
	has_many :orders, through: :order_items
end
