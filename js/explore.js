//function goal: reverse a string 
//first step: Take an input of a string 
//second step: If no native function exists to reverse string, do the following...
//2a: Split the string into an array of characters 
//2b: Reverse the array of characters 
//2c: Join the array back into a string.

function reversestr(str) { //Our input is here 

  //We'll do the alternative method. 
  //Split string, reverse it, then join it. 
 return str.split("").reverse().join("")
}

var z = reversestr("hello")

if (1 == 1) {
  console.log( z)  

}
