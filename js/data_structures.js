var colors = ["red", "blue", "green", "yellow"];
var hnames = ["Ed", "Sparkle", "Tom", "Sally"];

colors.push("violet");
hnames.push("Corvette");

var horses = {name: "Sam", color: "brown"};
for (x = 0;x < colors.length; x++)
{
  horses.name = hnames[x];
  horses.color = colors[x];
  
  console.log(horses);
  
}

function Car(model, color, maxspeed) {
	// In this context, 'this' refers to 
	// the individual dog we're making
	console.log("Our new car:", this);
	
	// Therefore, this.name is sort of the Ruby
	// equivalent of @name
	this.model = model;
	this.color = color;
	this.maxspeed = maxspeed;
	
	// As for behavior, a function is a perfectly 
	// valid property value ... whoa!
	this.drive = function() { console.log("Vroom!"); };
	
	console.log("CAR INITIALIZATION COMPLETE");
}

var roadster = new Car("Ford", "red", 215);
roadster.drive();

var drifter = new Car("Nissan", "blue", 205);

var exotic = new Car("Lamborghini", "yellow", 380);