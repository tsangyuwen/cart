class ProductsController < ApplicationController
	def add_to_cart
		@product = Product.find(params[:id])
		current_cart.add_cart_item(@product)

		redirect_to root_path
	end

	def index

	end

	def show 

	end
end
