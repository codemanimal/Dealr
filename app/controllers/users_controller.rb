require 'pry'

class UsersController < ApplicationController
	def index
		render json: User.all
	end

	def new 
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			# this should direct to /deals
			redirect_to deals_path
		else
			render :new
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def add_deal
		user = User.find(params[:id])
		# deal = Deal.find(params[:deal_id])
		deal = Deal.find(params[:id])
		binding.pry
		
		user.add_deal(deal)
		
		redirect_to user_path(user)
	end
	
	def remove_deal
		user = User.find(params[:id])
		# deal = Deal.find(params[:deal_id])
		deal = Deal.find(params[:id])

		user.remove_deal(deal)

		# check to see if you need this same as above
		respond_to do |format|
			format.html { redirect_to user_path(user) }
			format.json { render json: @user }
		end
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :zipcode, :username, :password)
	end


end