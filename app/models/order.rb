class Order < ApplicationRecord
	has_many :payments
	has_many :products, through: :order_items
	has_many :order_items, dependent: :destroy

	belongs_to :user
end
