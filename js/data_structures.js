colors = ["red", "green", "blue", "orange"];

names = ["Ed", "Zed", "Ned", "Sted"];

console.log(colors);
console.log(names);

colors.push("purple")
names.push("Stetson")

console.log(colors)
console.log(names)

horses = {};
for (i = 0; i < colors.length; i++) {
	horses[names[i]] = colors[i];
}

console.log(horses);

function Car(color, year, runs_good) {
	this.color = color;
	this.year = year;
	this.runs_good = runs_good;

	this.start = function(){
		console.log("vrooommbubububub");
	};

	console.log("Car initialization complete");
}

var myFirstCar = new Car("white", 2002, false);

console.log(myFirstCar.color);
console.log(myFirstCar.year);
console.log(myFirstCar.runs_good);

var myWifesCar = new Car("black", 2012, true);

console.log(myWifesCar.color);
console.log(myWifesCar.year);
console.log(myWifesCar.runs_good);
myWifesCar.start();