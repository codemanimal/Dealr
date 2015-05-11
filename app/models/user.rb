class User < ActiveRecord::Base

	has_secure_password # I dont know if i need this / what it does -- took from weather_app
	has_and_belongs_to_many :deals

	validates :username, :password_digest,
						presence: true,
						uniqueness: true
						 # { case_sensitive: false }

	validates :first_name, :last_name, :zipcode,
						presence: true

end