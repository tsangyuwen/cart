class UserMailer < ApplicationMailer
	default from: "My Cart <info@alphacamp.co>"

	def notify_order_create(order)
		@order = order
		@content = "Your order is created. Thank you!"

		mail to: order.user.email,
		subject: "ALPHA Camp | Order Created: #{@order.id}"
	end
end
