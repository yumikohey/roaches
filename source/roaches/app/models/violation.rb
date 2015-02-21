class Violation < ActiveRecord::Base
	belongs_to :business

  # def latest_violation(business_id)
  #   violation_biz_array = []
  #   latest_violation = ""
  #   Violation.where(business_id: self.business_id)
  #   violation_biz_array.each {|violate_instance|
  #     latest_violation = violate_instance.where("date <= ?".order_by("date DESC").limit(1))
  #   }

  # end
end


# Violation.where(business_id: 4)
#     violation_biz_array.map {|violate_instance|
#       violate_instance.where("date <= ?".order_by("date DESC").limit(1))
#     }
