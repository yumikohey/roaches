class CreateBusinesses < ActiveRecord::Migration

	def change
		create_table :businesses do |t|
			t.string :address
			t.string :name
			t.string :owner_name
			t.integer :postal_code
			t.float :latitude
			t.float :longitude
			t.string :phone_number
			t.integer  :business_id
			t.string :city
			t.integer :tax_code
			t.string :business_certificate
			t.date :application_date
			t.string :owner_address
			t.string :owner_city
			t.string :owner_state
			t.integer :owner_zip

			t.timestamps
		end
	end
end
