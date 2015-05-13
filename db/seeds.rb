User.destroy_all
Deal.destroy_all

usernames = %w(Test1 Test2 Test3)
passwords  = ['asdf', 'asdfg', 'asdfgh']
first_names = ['Mark', 'Timmy', 'Jimmy']
last_names = ['Mark', 'Jimmy', 'Timmy']
zipcodes = ['10001', '10001', '10001']

usernames.each_with_index do |name, idx|
	User.create({
		username: name,
		password_digest: passwords[idx],
		first_name: first_names[idx],
		last_name: last_names[idx],
		zipcode: zipcodes[idx],
		})
end

Coupon.all