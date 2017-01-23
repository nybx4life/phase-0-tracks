console.log("The script is running!");

function addBorder(event)  {
	console.log("there was a click, here is the click event!");
	console.log(event);
	event.target.style.border = "2px solid orange";
}

var catPic = document.getElementById("pet-picture");
catPic.addEventListener("click", addBorder)