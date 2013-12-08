class User < ActiveRecord::Base
	has_many :postings
	before_save { self.email = email.downcase }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
										format: { with: VALID_EMAIL_REGEX }, 
	                  uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 3 }
end
