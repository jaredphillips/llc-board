class Posting < ActiveRecord::Base

	belongs_to :user
	acts_as_taggable

	validates :title, presence: true
	validates :company, presence: true
	validates :location, presence: true
	validates :job_type, presence: true
	validates :catagory, presence: true
	validates :job_description, presence: true
	validates :compensation, presence: true
	validates :how_to_apply, presence: true


	def self.reversed_order
		Posting.order('created_at DESC').reverse
	end
end
