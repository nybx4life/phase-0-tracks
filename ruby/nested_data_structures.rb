highway = {
	car: {
		driver: {
			name: "John",
			years_exp_driving: 14
		},
		trunk_items: [
			"spare_tire", 
			"car_jack", 
			"flashlight"
		],
		valid_drivers_license: false
	},
	trucks: {
		driver: {
			name: "Abbey",
			years_exp_driving: 22
		},
		trunk_items: [
			"blanket",
			"wrench",
			"toolbox"
		],
		valid_drivers_license: true
	},
	motorcycles: {
		driver: {
			name: "Cece",
			years_exp_driving: 8
		},
		trunk_items: [],
		valid_drivers_license: true
	}
}

p highway[:car][:driver][:name]
p highway[:trucks][:trunk_items][2]
p highway[:car][:valid_drivers_license]
p highway[:motorcycles][:trunk_items]
p highway[:motorcycles][:driver][:years_exp_driving]