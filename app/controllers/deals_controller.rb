class DealsController < ApplicationController
	
	before_action :authenticate

	def index
		@deals = Deal.all
		# render json: @deals
	end

	def show
		@deal = Deal.find(params[:id])
	end

	# def add_deal
	# 	user = current_user
	# 	# NEED TO GET THE CURRENT DEAL - not same as user id
	# 	deal = Deal.find(:id = Deal.show)

	# 	user.add_deal(deal)
		
	# 	redirect_to deals_path
	# end
	
	# def remove_deal
	# 	user = User.find(params[:id])
	# 	# deal = Deal.find(params[:deal_id])
	# 	deal = Deal.find(params[:id])

	# 	user.remove_deal(deal)

	# 	# check to see if you need this same as above
	# 	respond_to do |format|
	# 		format.html { redirect_to user_path(user) }
	# 		format.json { render json: @user }
	# 	end
	# end

end