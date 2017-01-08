//r0:

//create variable to hold longest string
function long_string(da_ray){
  var longest = "";
  //in loop, compare length of current string to longest. Hold whatever is longer. 
  for (i = 0; i < da_ray.length; i++){
    if(da_ray[i].length > longest.length){
      longest = da_ray[i];
    }
   
  }
  
  console.log("The longest string is: " + longest);
}


//r1: Test to see between two objects if key matches, or value matches.

//create function, take in two variables as arguments. You can create objects with those arguments, as shown below
function objMatcher (var1, var2)
{
  //This function relies on usage of key "name", and value "age" for a true condition. 
  if (var1.name == var2.name || var1.age == var2.age) {
    console.log("true");
    return true;
  }
  
  //of course, lacking both brings us the else condition.
  else {
    console.log("false");
    return false;
  }
  
}


//r2: 

//this is a background function for the main function that we need. This one just creates a random string 
//at a specified length.
var randomString = function(length) {
    var text = "";
    var possible = "abcdefghijklmnopqrstuvwxyz";
    for(var i = 0; i < length; i++) {
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return text;
}



//easy way to add to array is to use .push method
function randoWords(num)
{
  var ray = [];
  //Notice within this function, we have our array to hold a specified number of elements, with loop giving us strings of random length.
  for (x = 0; x < num; x++){
    var t= Math.floor(Math.random() * (10 - 1 + 1)) + 1;
    ray.push(randomString(t));
  }
  console.log(ray);
}

//driver code:

long_string(["short","long","longer","longest","longergest"]);
objMatcher({name: "Dave", age: "31"}, {name: "Daisy", age: "31"});
randoWords(5);