class CouponWrapper

	API_ROOT_URL = 'http://api.8coupons.com/v1/'
	API_KEY = 'key=689ea171e1c687ba221e74d25dea85a4768c13d2eda8898c9c8307a34d7813750696489f49da9dbcff3ddc6f953e567f'

	zip = '10001'
	radius = '10'
	limit = '1000'
	order = 'popular'

	def self.get_deals
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

		response
	end





end