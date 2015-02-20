class CreateBusinesses < ActiveRecord::Migration

	def change
		create_table :businesses do |t|
			t.string :address
			t.string :name
			t.string :owner_name
			t.integer :zip_code
			t.float :latitude
			t.float :longitude
			t.string :phone

			t.timestamps
		end
	end
end