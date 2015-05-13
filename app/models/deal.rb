class Deal < ActiveRecord::Base

	has_and_belongs_to_many :users

	validates :biz_name, :deal_url, :deal_title, :deal_desc, :deal_price, :logo_image, :deal_image, :deal_id,
						presence: true

	validates :deal_title,
						uniqueness: { scope: :deal_id, message: "this deal already exists" }

	def self.current_deal
		self.find(params[:id])
	end

end