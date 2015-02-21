class Violation < ActiveRecord::Base
	belongs_to :business

	def self.find_latest_violation(business_id)
		unique_biz = Violation.where(business_id: business_id)
		the_biz = unique_biz.order("date").last
		return the_biz
	end
end
