class CreateViolations < ActiveRecord::Migration

	def change
		create_table :violations do |t|
			t.date :violation_date
			t.string :risk_category
			t.string :description
			t.belongs_to :business
			
			t.timestamps
		end
	end
end