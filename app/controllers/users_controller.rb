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

	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :zipcode, :username, :password)
	end


end