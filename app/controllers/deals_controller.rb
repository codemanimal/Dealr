class DealsController < ApplicationController

	def all_deals
		results = CouponWrapper.get_deals
		render json: result
	end

end