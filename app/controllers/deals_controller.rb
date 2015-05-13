class DealsController < ApplicationController
	
	before_action :authenticate

	def index
		@deals = Deal.all
		# render json: @deals
	end

	def show
		@deal = Deal.find(params[:id])
	end

end