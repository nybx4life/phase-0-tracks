/* 
    set current longest phrase variable to 0
    iterate through the array
   	 if the length of the current index is longer than longest phrase var, 
   		 set index as the new longest phrase var
	 Once the array has been iterated through, return lngest phrase var */


function longest_phrase(array) {
	var longest_length = 0
	var current_longest = null
	for (i = 0; i < array.length; i++) {
		if (array[i].length > longest_length) {
			current_longest = array[i]
			longest_length = array[i].length
		}
	}
	return current_longest
}

/*  input: 2 objects
	set match variable to false
	iterate through first object
		for each key value pair of the first object:
		iterate through 2nd object
			if there is a match, return true
	return match variable
*/

function object_share (object1, object2){
	var matchBool = false
	for (var key1 in object1) {
		for (var key2 in object2) {
			if (key2 == key1 && object1[key1] == object2[key2]) {
				matchBool = true
			}
		}
	}
	return matchBool
}

/*  function: generate random string between 1 and 10 chars
		generate random number between 1 and 10
		loop that will iterate that many times
			add new randomly generated char to string
		return string
*/

function randomStr(){
	randomNum = Math.random();
	randomNum *= 10
	randomNum += 1
	randomNum = parseInt(randomNum)
	var randomStr = ""
	var charRange = "abcdefghijklmnopqrstuvwxyz"
	for (i = 0; i < randomNum; i++) {
		randomIndex = Math.floor(Math.random() * charRange.length)
		randomStr += charRange[randomIndex]
	}
	return randomStr
}

/*  function input: integer
	initialize empty array
	create loop that will iterate number of times as argument given
		call randomStr function and store that return value in an array
	return array
*/

function randomData(length){
	newArray = [];
	for (j = 0; j < length; j++) {
		newArray.push(randomStr());
	}
	return newArray;
}

for (k = 0; k < 10; k++) {
	giberishArray = randomData(5)
	console.log(`${giberishArray}`)
	console.log(`${longest_phrase(giberishArray)}`)
}

// sup = randomData(6)
// console.log(sup)

// newString = randomStr()
// console.log(newString)

// var testObject1 = {name: "Steven", age: 54};
// var testObject2 = {name: "Tamir", age: 54};

// var testObject3 = {name: "Steven", age: 55};
// var testObject4 = {name: "Tamir", age: 54};

// var testObject5 = {name: "Steven", age: 55};
// var testObject6 = {name: "Steven", age: 54};

// share_result1 = object_share(testObject1, testObject2)
// console.log(share_result1)

// share_result2 = object_share(testObject3, testObject4)
// console.log(share_result2)

// share_result3 = object_share(testObject5, testObject6)
// console.log(share_result3)


// longest = longest_phrase(["longggggg phrase","longest phrase","longer phrase"])

// console.log(longest)

// testArray2 = ["sup", "supsup", "supsupsup"]
// testArray3 = ["supsupsup", "supsup", "sup"]

// results2 = longest_phrase(testArray2)
// console.log(`Longest phrase of test 2: ${results2}`)

// results3 = longest_phrase(testArray3)
// console.log(`longest phrase of test 3: ${results3}`)


