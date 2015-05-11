class User < ActiveRecord::Base

	has_secure_password
	has_and_belongs_to_many :deals

	validates :username, :password_digest,
						presence: true,
						uniqueness: { case_sensitive: false }

	validates :first_name, :last_name, :zipcode,
						presence: true

end