class CouponWrapper

	API_ROOT_URL = 'http://api.8coupons.com/v1/'
	API_KEY = 'key=689ea171e1c687ba221e74d25dea85a4768c13d2eda8898c9c8307a34d7813750696489f49da9dbcff3ddc6f953e567f'

	zip = '10001'
	radius = '10'
	limit = '1000'
	order = 'popular'

	def self.all
		search_url = [
			API_ROOT_URL,
			'getdeals?',
			API_KEY,
			'&zip=',
			zip,
			'&mileradius=',
			radius,
			'&limit=',
			limit,
			'&orderby=',
			order
			].join

		response = HTTParty.get(search_url)

		response.each do |deal|
			Deal.create(
	    	biz_name: response.name,
	    	biz_address: response.address,
	    	biz_city: response.city,
	    	biz_state: response.state,
	    	biz_zip: response.zip,
	    	biz_phone: response.phone,
	    	deal_url: response.URL,
	    	deal_id: response.ID,
	    	deal_title: response.dealTitle,
	    	deal_desc: response.dealinfo,
	    	deal_disclaim: response.disclaimer,
	    	expiration: response.expirationDate,
	    	deal_image: response.showImage,
	    	deal_image_big: response.showImageStandardBig,
	    	deal_image_small: response.showImageStandardSmall,
	    	logo_image: response.showLogo,
	    	category: response.categoryID,
	    	subcategory: response.subcategoryID,
	    	provider: response.providerName,
	    	deal_price: response.dealPrice,
	    	original_price: response.dealOriginalPrice,
	    	savings_amount: response.dealSavings,
	    	savings_percent: response.dealDiscountPercent,
	    	total_num_deals: response.totalDealsInThisStore
			)
		end

	end





end