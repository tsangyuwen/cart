class Admin::ProductsController < ApplicationController
	before_action :authenticate_user!
	before_action :authenticate_admin

	private

	def authenticate_admin
		unless current_user.admmin?
			redirect_to root_path
		end
	end
end
