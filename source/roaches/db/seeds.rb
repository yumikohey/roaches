require_relative '../spec/spec_helper'

# business #10
Business.create(
	business_id: 10,
	name: "Tiramisu Kitchen",
	address: "33 Belden Pl",
	postal_code: 94104,
	latitude: 37.791116,
	longitude: -122.403816
	)

Inspection.create(
	business_id: 10,
	date: '2014-08-07'
)

Violation.create(
	business_id: 10,
	date: '2014-07-29',
	risk_category: 'Low Risk',
	description: 'Unapproved or unmaintained equipment or utensils'
)

# business #17

Business.create(
	business_id: 17,
	name: "GEORGE'S COFFEE SHOP",
	address: "2200 OAKDALE Ave",
	owner_name: 'LIEUW, VICTOR & CHRISTINA C',
	postal_code: 94124,
	latitude: 37.741086,
	longitude: -122.401737,
	phone_number: '14155531470'
	)

Inspection.create(
	business_id: 17,
	date: '2014-04-25'
)

Violation.create(
	business_id: 17,
	date: '2014-03-12',
	risk_category: 'Low Risk',
	description: ['Unapproved or unmaintained equipment or utensils',
				  'Unclean nonfood contact surfaces',
				  'Unclean or degraded floors walls or ceilings']
)

#business #19

Business.create(
	business_id: 19,
	name: "Nrgize Lifestyle Cafe",
	address: "1200 Van Ness Ave, 3rd Floor",
	owner_name: '24 Hour Fitness Inc',
	postal_code: 94109,
	latitude: 37.786848,
	longitude: -122.421547,
	)

Inspection.create(
	business_id: 19,
	date: '2014-11-10',
	score: 94
)

Violation.create(
	business_id: 19,
	date: '2014-11-10',
	risk_category: 'Moderate Risk',
	description: ['Inadequate food safety knowledge or lack of certified food safety manager',
				  'Improper storage of equipment utensils or linens'
				]
)
