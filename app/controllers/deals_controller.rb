class DealsController < ApplicationController
	# what is this doing?
	def home
		render layout: 'application', text: ''
	end

	def all
		result = CouponWrapper.all

		# this will render json, i think
		# but I want to .create each result to my db
		render json: result
	end


end