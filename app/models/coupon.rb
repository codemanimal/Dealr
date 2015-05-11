class Coupon

	API_ROOT_URL = 'http://api.8coupons.com/v1/'
	API_KEY = 'key=689ea171e1c687ba221e74d25dea85a4768c13d2eda8898c9c8307a34d7813750696489f49da9dbcff3ddc6f953e567f'

	def self.all

		zip = '10001'
		radius = '10'
		limit = '1000'
		order = 'popular'

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

		coupon_data = HTTParty.get(search_url)

		coupon_data.each do |coupon|
			Deal.create(
	    	biz_name: coupon['name'],
	    	biz_address: coupon['address'],
	    	biz_city: coupon['city'],
	    	biz_state: coupon['state'],
	    	biz_zip: coupon[''],
	    	biz_phone: coupon['phone'],
	    	deal_url: coupon['URL'],
	    	deal_id: coupon['ID'],
	    	deal_title: coupon['dealTitle'],
	    	deal_desc: coupon['dealinfo'],
	    	deal_disclaim: coupon['disclaimer'],
	    	expiration: coupon['expirationDate'],
	    	deal_image: coupon['showImage'],
	    	deal_image_big: coupon['showImageStandardBig'],
	    	deal_image_small: coupon['showImageStandardSmall'],
	    	logo_image: coupon['showLogo'],
	    	category: coupon['categoryID'],
	    	subcategory: coupon['subcategoryID'],
	    	provider: coupon['providerName'],
	    	deal_price: coupon['dealPrice'],
	    	original_price: coupon['dealOriginalPrice'],
	    	savings_amount: coupon['dealSavings'],
	    	savings_percent: coupon['dealDiscountPercent'],
	    	total_num_deals: coupon['totalDealsInThisStor']
			)
		end

	end





end