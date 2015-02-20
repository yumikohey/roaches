class Violation < ActiveRecord::Base
	belongs_to :business
  serialize :description, Array
end
