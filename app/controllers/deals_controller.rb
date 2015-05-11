class DealsController < ApplicationController
	
	# before_action :authenticate

	def index
		@deals = Deal.all
	end

	def show
		@deal = Deal.find(params[:id])
	end

end