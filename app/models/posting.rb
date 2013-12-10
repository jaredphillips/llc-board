class Posting < ActiveRecord::Base

	belongs_to :user
	acts_as_taggable

	def self.reversed_order
		Posting.order('created_at DESC').reverse
	end
end
