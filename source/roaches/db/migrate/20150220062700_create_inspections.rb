class CreateInspections < ActiveRecord::Migration

	def change
		create_table :inspections do |t|
			t.integer :score
			t.date :inspec_date
			t.belongs_to :business

			t.timestamps
		end
	end
end